using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookPurchaseAdd : System.Web.UI.UserControl
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
                DropDownList1.DataSource = b;
                DropDownList1.DataTextField = "BookCategoryDescription";
                DropDownList1.DataValueField = "BookCategoryID";
                DropDownList1.DataBind();
            }
            var c = from i in db.BookVendors
                    select new
                    {
                        i.BookVendorID,
                        i.VendName
                    };
            if (c != null)
            {
                ddlbkcat.DataSource = c;
                ddlbkcat.DataTextField = "VendName"; 
                ddlbkcat.DataValueField ="BookVendorID";
                ddlbkcat.DataBind();
            }
            var d = from i in db.Books
                    select new
                    {
                        i.BookID,
                        i.BookName
                    };
            if (d != null)
            {
                DropDownList2.DataSource = d;
                DropDownList2.DataTextField = "BookName";
                DropDownList2.DataValueField = "BookID";
                DropDownList2.DataBind();
            }
        }
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (txted.Text == "" || TextBox3.Text == "" || TextBox1.Text == ""
           || TextBox1.Text == "" || TextBox2.Text == ""
           || ddlbkcat.SelectedValue == "select value" || DropDownList1.SelectedValue == "select value")
        {
            bkaddlab.Visible = true;
            bkaddlab.Text = "All fields must be filled";
        }
        else
        {
            BookPurchase b = new BookPurchase();
            b.BookVendorID = Convert.ToInt32(ddlbkcat.SelectedValue);
            b.BookCategoryID = Convert.ToInt32(DropDownList1.SelectedValue);
            b.BookPricePaid = Convert.ToInt32(TextBox1.Text);
            b.BookPriceLeft = Convert.ToInt32(TextBox3.Text);
            b.BookPrice = Convert.ToInt32(TextBox2.Text);
            b.BookID = Convert.ToInt32(DropDownList2.SelectedValue); 
            db.BookPurchases.InsertOnSubmit(b);
            db.SubmitChanges();
            bkaddlab.Visible = true;
            bkaddlab.Text = "Record suceessfully added to database";
        }
    }
}