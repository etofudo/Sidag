using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_LibraryNewsAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtTitle.Text == "" || txtAuthor.Text == "" || txtDate.Text == ""
            || txtDetails.Text == "")
        {
            txtMessage.Text = "All fields must be filled";
        }
        else
        {
            LibraryNew ln = new LibraryNew();
            ln.NewsTitle = txtTitle.Text;
            ln.Details = txtDetails.Text;
            ln.NewsDate = txtDate.Text;
            ln.Author = txtAuthor.Text;

            db.LibraryNews.InsertOnSubmit(ln);
            db.SubmitChanges();
            txtMessage.Text = "Record sucessfully inserted";
        }
    }
}