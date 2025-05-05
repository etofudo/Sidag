using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_vendorview : System.Web.UI.UserControl
{
    LIBDataClassesDataContext db = new LIBDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.Vendors
                select new
                {
                    i.Name,
                    i.Address,
                    i.Email,
                    i.BookVendorPerformance,
                    i.PhoneNumber,
                    i.BookSupplied
                };
        GridView1.DataSource = s;
        GridView1.DataBind();
    }
}