using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_bookshelfview : System.Web.UI.UserControl
{
    LIBDataClassesDataContext db = new LIBDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var s = from i in db.BookShelfs
                    select new
                    {
                        id = i.BookShelfID,
                        shelfname = i.BookShelfName,
                        shelfcat = i.ShelfCategory,
                        date = i.CreatedDate
                    };
            if (s != null)
            {
                bookshelgGridView.DataSource = s;
                bookshelgGridView.DataBind();
            }
        }
    }
    protected void bookshelgGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("bookshelfadd.aspx?passid=" + e.CommandArgument);
    }
}