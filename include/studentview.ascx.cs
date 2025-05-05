using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_studentview : System.Web.UI.UserControl
{
    LIBDataClassesDataContext db = new LIBDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.Students
                select new
                {
                    i.FirstName,
                    i.LastName,
                    i.Matric_No,
                    i.Email,
                    i.Faculty,
                    i.Department,
                    i.CurrentLevel,
                    i.PhoneNumber
                };
        GridView1.DataSource = s;
        GridView1.DataBind();
    }
}