using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_usercategoryview : System.Web.UI.UserControl
{
    LIBDataClassesDataContext db = new LIBDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       var s = from i in db.UserCategories
                select new
                {
                    i.UserCatID,
                    i.UserCatDescription,
                    i.CreatedDate
                };
       GridView1.DataSource = s;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("usercategoryadd.aspx?passid=" + e.CommandArgument);
    }
}