using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_LibraryAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "" || txtAddress.Text == "" || txtEmail.Text == "" || txtPhoneNo.Text == "")
        {
            txtMessage.Text = "All fields must be filled";
        }
        else
        {
            Library La = new Library();
            La.LibraryName = txtName.Text;
            La.PhoneNo = txtPhoneNo.Text;
            La.Email = txtEmail.Text;
            La.Address = txtAddress.Text;
            La.CreatedDate = DateTime.Today.ToShortDateString();

            db.Libraries.InsertOnSubmit(La);
            db.SubmitChanges();
            txtMessage.Text = "Record successfully inserted";
        }

    }
}