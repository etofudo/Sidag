using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookCatAdd : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            bkcatlab.Visible = true;
            bkcatlab.Text = "Fill the field";
        }

        else
        {
            BookCategory b = new BookCategory();
            b.BookCategoryDescription = TextBox1.Text;
            db.BookCategories.InsertOnSubmit(b);
            db.SubmitChanges();
            bkcatlab.Visible = true;
            bkcatlab.Text = "Data Inserted To Database";
        }
    }
}