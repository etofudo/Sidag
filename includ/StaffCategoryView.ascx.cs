using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_StaffCategory_view : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HULMSDataClassesDataContext db = new HULMSDataClassesDataContext();
        var t = from i in db.StaffCategories
                select new
                {
                    i.StaffCategoryID,
                    i.StaffCategoryDescription,
                    i.CreatedDate
                };
        GridView1.DataSource = t;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("staffcatadd.aspx?passid=" + e.CommandArgument);
    }
}