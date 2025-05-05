using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookVendorAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        if (txtAddress.Text == "" || txtName.Text == "" || txtEmail.Text == "" ||
            txtPhoneNo.Text == "")
        {
            txtMessage.Text = "All fields must be filled or selected";
        }
        else
        {
            BookVendor bv = new BookVendor();
            bv.VendorName = txtName.Text;
            bv.VendorAddress = txtAddress.Text;
            bv.VendorPhoneNo = txtPhoneNo.Text;
            bv.Email = txtEmail.Text;
            bv.CreatedDate = DateTime.Today.ToShortDateString();

            db.BookVendors.InsertOnSubmit(bv);
            db.SubmitChanges();
            txtMessage.Text = "Vendor Successfully added";
        }
    }
}