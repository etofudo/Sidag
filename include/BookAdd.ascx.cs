using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookAdd : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var b = from i in db.BookCategories
                    select new
                    {
                        i.BookCategoryID,
                        i.BookCategoryDescription
                    };
            if (b != null)
            {
                ddlbkcat.DataSource = b;
                ddlbkcat.DataTextField = "BookCategory";
                ddlbkcat.DataValueField = "BookCategoryID";
                ddlbkcat.DataBind();
            }
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       

    }
    protected void txtt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (txtt.Text == "" || txta.Text == "" || TextBox1.Text == ""
           || txtp.Text == "" || txted.Text == ""
           || txty.Text == "" || ddlbkcat.SelectedValue == "select value")
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "All fields must be filled";
        }
        else
        {
            Book b = new Book();
            b.BookName = txtt.Text;
            b.Author = txta.Text;
            b.YearPublished = txty.Text;
            b.Publisher = txtp.Text;
            b.Edition = txted.Text;
            b.ISBN = TextBox1.Text;
            b.BookCategoryID = Convert.ToInt32(ddlbkcat.SelectedValue);
            db.Books.InsertOnSubmit(b);
            db.SubmitChanges();
            bkaddlab.Visible = true;
            bkaddlab.Text = "Record suceessfully added to database";
        }
        
    }
}