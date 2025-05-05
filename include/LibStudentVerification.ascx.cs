using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_LibStudentVerification : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtMatNo.Text == "")
        {
            txtMessage.Text = "Please enter Student's Matriculation Number";
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        else
        {
            txtMessage.Text = "";
            var ui = (from i in db.LibUsers
                      where i.MatriculationNumber == txtMatNo.Text
                      select i).SingleOrDefault();
            if (ui != null)
            {
                var lb = from i in db.LoanBooks
                         where i.LibUserID == ui.LibUserID && i.Fine > 0
                         select new
                         {
                             name = ui.FirstName + " " + ui.LastName,
                             matno = ui.MatriculationNumber,
                             email = ui.Email,
                             gender = ui.Gender
                         };
                GridView1.DataSource = lb;
                GridView1.DataBind();
                txtComment.Text = txtMatNo.Text + " cannot be Cleared, yet to return or pay library fine";
            }
            else if(ui == null)
            {
                var lb = from i in db.LoanBooks
                         where i.LibUserID == ui.LibUserID && i.Fine > 0
                         select new
                         {
                             name = ui.FirstName + " " + ui.LastName,
                             matno = ui.MatriculationNumber,
                             email = ui.Email,
                             gender = ui.Gender
                         };
                GridView1.DataSource = lb;
                GridView1.DataBind();
                txtComment.Text = txtMatNo.Text + " can be Cleared.";

            }
            
        }
   }
    protected void btnVerify_Click(object sender, EventArgs e)
    {
        Response.Redirect("LibStuClear.aspx");
    }
}