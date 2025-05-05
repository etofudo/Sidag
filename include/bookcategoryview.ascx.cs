using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_bookcategoryview : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.BookCategories
                select new
                {
                    i.BookCategoryID,
                    i.BookCategoryDescription,
                    i.CreatedDate
                };
        GridView2.DataSource = s;
        GridView2.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("bookcategoryadd.aspx?passid=" + e.CommandArgument);
    }
}