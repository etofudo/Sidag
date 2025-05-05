using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_staffview : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.LibUsers
                select new
                {
                    i.LibUserID,
                    i.FirstName,
                    i.LastName,
                    i.MatriculationNumber ,
                    i.Email,
                    i.Department,
                    i.StaffID,
                    i.PhoneNumber
                };
        GridView1.DataSource = s;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("useraddpg.aspx?passid=" + e.CommandArgument);

    }
}