using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    string logpass;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        var s1 = (from i in db.LibUsers
                  where i.Email == txte.Text && i.Passwd == txtp.Text && i.MatriculationNumber != ""
                  select i).SingleOrDefault();
        var s = (from i in db.LibUsers
                 where i.Email == txte.Text && i.Passwd == txtp.Text && i.RoleNm != ""
                 select i).SingleOrDefault();
        
        if (s != null)
        {
            Response.Redirect("adminwelcome.aspx?tk=" + s.LibUserID);
            
        }
        else if(s1 != null){
                Response.Redirect("userwelcome.aspxtk=" + s1.LibUserID);
        }
        else
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "Incorrect Username or password";
        }



    } 
        
       

}