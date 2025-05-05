using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_bookreturnview : System.Web.UI.UserControl
{
    LIBDataClassesDataContext db = new LIBDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var s = from i in db.BookReturns
                select new
                {
                    i.BookReturnID,
                    i.LoanBookID,
                    i.UserID,
                    i.Comments,
                    i.Status,
                    i.ReturnDate
                };
            if (s != null)
            {
                GridView1.DataSource = s;
                GridView1.DataBind();
            }
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("bookreturnadd.aspx?passid=" + e.CommandArgument);
    }
}