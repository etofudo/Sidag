using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookCatAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtBookCategory.Text == "")
        {
            txtMessage.Text = "All Fields must be filled";
        }
        else
        {
            BookCategory bc = new BookCategory();
            bc.BookCategoryDiscription = txtBookCategory.Text;
            db.BookCategories.InsertOnSubmit(bc);
            db.SubmitChanges();
            txtMessage.Text = "Record suceessfully added to database";
        }
        
    }
}