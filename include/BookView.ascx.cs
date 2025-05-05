using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookView : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.Books
                select new
                {
                    i.BookID,
                    i.BookName,
                    i.Author,
                    i.Publisher,
                    i.Edition,
                    
                };
        GridView1.DataSource = s;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("bookaddpg.aspx?passid=" + e.CommandArgument);
    }
}