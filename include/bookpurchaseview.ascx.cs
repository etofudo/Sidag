using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_bookpurchaseview : System.Web.UI.UserControl
{
    LIBDataClassesDataContext db = new LIBDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.BookPurchases
                select new
                {
                    i.BookCatID,
                    i.BookID,
                    i.BookPrice,
                    i.BookPriceLeft,
                    i.BookPricePaid,
                    i.BookVendorID,
                    i.NoOfBookPurchased,
                    i.YearPublished
                };
        GridView1.DataSource = s;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("bookpurchaseadd.aspx?passid=" + e.CommandArgument);
    }
}