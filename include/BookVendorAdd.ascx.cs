using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookVendorAdd : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {

        if (txtn.Text == "" || txta.Text == "" || txtp.Text == "" || txted.Text == "")
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "All fields must be filled";
        }
        else
        {
            BookVendor v = new BookVendor();
            v.VendName = txtn.Text;
            v.VendAddress = txted.Text;
            v.PhoneNo = txtp.Text;
            v.Email = txta.Text;
            db.BookVendors.InsertOnSubmit(v);
            db.SubmitChanges();
            bkaddlab.Visible = true;
            bkaddlab.Text = "Successfully Inserted to Database";
        }
    }
}