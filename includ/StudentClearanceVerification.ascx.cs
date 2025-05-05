using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_StudentClearanceVerification : System.Web.UI.UserControl
{
    public string passid;
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtMatNo.Text == "")
        {
            txtMessage.Text = "Please enter Matriculation number";
        }
        else
        {
            var ui = (from i in db.UserInfos
                      where i.MatricNo == txtMatNo.Text
                      select i).SingleOrDefault();
            if (ui != null)
            {
                var lb = from i in db.LoanBooks
                         where i.UserID == ui.UserID
                         select new
                         {
                             
                             name = ui.FirstName + " " + ui.LastName,
                             gender = ui.Gender,
                             status = i.Status,
                             book = i.Book.BookName,
                             fine = i.Fine,
                             dept = ui.DeptName,
                             email = ui.Email,
                             loandate = i.LoanDate,
                             duedate = i.DueDate
                             
                             
                         };
                passid = ui.UserID.ToString();
                StudentDetails.DataSource = lb;
                StudentDetails.DataBind();
                btnVerify.Text = "Verify " + txtMatNo.Text; 
            }

        }
    }
    protected void btnVerify_Click(object sender, EventArgs e)
    {
        Response.Redirect("libstudentclearance.aspx?passid=" + passid);
    }
}