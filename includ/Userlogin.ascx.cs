using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_System_include_Userlogin : System.Web.UI.UserControl
{
    HULMSDataClassesDataContext db = new HULMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (ddlUser.SelectedValue == "Select Category" || txtUsername.Text == "" || txtPassword.Text == "")
        {
            txtNotification.Text = "Select User Category and Enter User Email & Password";
        }
        else
        {
            String type;
            type = ddlUser.SelectedValue;
        if (type == "staff")    
        {
                var s = (from i in db.Staffs
                         where i.Email == txtUsername.Text && i.password == txtPassword.Text
                         select i).SingleOrDefault();
                if(s != null)
                {
                    Response.Redirect( "LSU/Home.aspx");
                }
                else
                {
                    txtNotification.Text = "Unthorized user, login Failed!";
                  }
           }
           else if(type == "Student")
            {
            var s = (from i in db.Students
                 where i.Email == txtUsername.Text && i.password == txtPassword.Text
                 select i).SingleOrDefault();
            if (s != null)
            {
                Response.Redirect("LSS/Home.aspx");
            }
            else
            {
                txtNotification.Text = "Unthorized user, login Failed!";
            }

        } 
            else
            {
                //do nothing
            }
    }
}
}

