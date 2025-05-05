using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_LibStudentClearanceAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    private string passid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Page.Request["passid"] != "")
        {
            passid = (string)this.Page.Request["passid"];
            var c = (from i in db.UserInfos
                     where i.UserID.ToString() == passid
                     select i).SingleOrDefault();

            if (c != null)
            {
                ddlStatus.SelectedValue = "Cleared";
                txtDetails.Text = "Book Intact";
                txtMatNo.Text = c.MatricNo;
                txtDateCleared.Text = DateTime.Today.ToShortDateString();
            }


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(txtMatNo.Text == "" || ddlStatus.SelectedValue == "select value" || txtDateCleared.Text == ""
            || txtDetails.Text == "" || txtComment.Text == "")
        {
            txtMessasge.Text = "All fields must be filled";
        }
        else
        {
            LibraryStudentClerance lsc = new LibraryStudentClerance();
            lsc.Status = ddlStatus.SelectedValue;
            lsc.Details = txtDetails.Text;
            lsc.Comments = txtComment.Text;
            lsc.ClearedDate = txtDateCleared.Text;
            lsc.CreatedDate = DateTime.Today.ToShortDateString();
            db.LibraryStudentClerances.InsertOnSubmit(lsc);
            db.SubmitChanges();
            txtMessasge.Text = "Student successfully cleared";
        }
    }
}