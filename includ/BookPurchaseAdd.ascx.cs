using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookPurchaseAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var bnCat = from i in db.BookCategories
                     select new
                     {
                         i.BookCategoryID,
                         i.BookCategoryDiscription
                     };
            if (bnCat != null)
            {
                ddlBookCategory.DataSource = bnCat;
                ddlBookCategory.DataTextField = "BookCategoryDiscription";
                ddlBookCategory.DataValueField = "BookCategoryID";
                ddlBookCategory.DataBind();
            }
        
            var Vn = from i in db.BookVendors
                        select new
                        {
                            i.BookVendorID,
                            i.VendorName
                        };
            if (Vn != null)
            {
                ddlVendor.DataSource = Vn;
                ddlVendor.DataTextField = "Name";
                ddlVendor.DataValueField = "BookVendorID";
                ddlVendor.DataBind();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(txtBookName.Text == "" || txtBookPrice.Text == "" || 
            txtBookPricePaid.Text == "" || txtBookPriceLeft.Text == "" ||
            ddlBookCategory.SelectedValue == "select value" || txtNoOfBookPurchased.Text == "" ||
            ddlVendor.SelectedValue == "select value")
        {
            txtMessage.Text = "All fields must be field"; 
        }
        else
        {
            BookPurchase bp = new BookPurchase();
            bp.BookID = Convert.ToInt32(txtBookName.Text);
            bp.BookPrice = Convert.ToInt32(txtBookPrice.Text);
            bp.BookPricePaid = Convert.ToInt32(txtBookPricePaid.Text);
            bp.BookPriceLeft = Convert.ToInt32(txtBookPriceLeft.Text);
            bp.BookCategoryID = Convert.ToInt32(ddlBookCategory.SelectedValue);
            bp.NoOfBookPurchased = Convert.ToInt32(txtNoOfBookPurchased.Text);
            bp.BookVendorID = Convert.ToInt32(ddlVendor.SelectedValue);
            db.BookPurchases.InsertOnSubmit(bp);
            db.SubmitChanges();
            txtMessage.Text = "Record successfully added to Database";
        }
    }
}