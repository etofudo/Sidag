using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookShelfAdd : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var s = from i in db.BookCategories
                select new
                {
                    i.BookCategoryID,
                    i.BookCategoryDescription
                };
        if (s != null)
        {
            ddlbkcat.DataSource = s;
            ddlbkcat.DataValueField = "BookCategoryID";
            ddlbkcat.DataTextField = "BookCategoryDescription";
            ddlbkcat.DataBind();
        }
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        BookShelf a = new BookShelf();
        a.BkShelfName = txtt.Text;
        a.ShelfCategoryID = Convert.ToInt32( ddlbkcat.SelectedValue);
        db.BookShelfs.InsertOnSubmit(a);
        db.SubmitChanges();
        bkaddlab.Visible = true;
        bkaddlab.Text = "Successfully Inserted to Database";
    }
}