using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_UserAdd : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    public string logpass;
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
            var s = from i in db.Departments
                    select new
                    {
                        i.UserID,
                        i.DeptName
                    };
            if (s != null)
            {
                ddld.DataSource = s;
                ddld.DataTextField = "DeptName";
                ddld.DataValueField = "UserID";
                ddld.DataBind();
            }
            }
        }

    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (txtt.Text == "" || txta.Text == "" || ddld.SelectedValue == "select value" || ddlr.SelectedValue == "select value" ||
            txtst.Text == "" && txtem.Text == "" || txtem.Text == "" || txtph.Text == "" || txty.Text == "" || txtpc.Text == "")
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "All fields must be filled";

        }
        else if (txty.Text != txtpc.Text)
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "password Mismatch";
        }

        else if (txtst.Text !="" && txtem.Text !="")
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "Select Either StaffID or Matric. Number";
        }
        
        else
        {
            LibUser s = new LibUser();
            s.FirstName = txtt.Text;
            s.LastName = txta.Text;
            s.MatriculationNumber = txtst.Text;
            s.Email = txtem.Text;
            s.DepartmentID = Convert.ToInt32(ddld.SelectedValue);
            s.RoleNm = ddlr.SelectedValue;
            s.Passwd = txty.Text;
            s.Photo = FileUpload1.FileBytes;
            db.LibUsers.InsertOnSubmit(s);
            db.SubmitChanges();
            bkaddlab.Visible = true;
            bkaddlab.Text = "Record suceessfully added to database";
        }
    }
    protected void d_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}