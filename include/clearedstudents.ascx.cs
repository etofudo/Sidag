using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_clearedstudents : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s1 = from i in db.LibUsers
                 where i.MatriculationNumber != ""
                select new
                {
                    i.LibUserID,
                    i.FirstName,
                    i.LastName,
                    i.MatriculationNumber,
                };
        
        GridView1.DataSource = s1;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}