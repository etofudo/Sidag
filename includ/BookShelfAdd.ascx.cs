using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookShelfAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var sc = from i in db.ShelfCategories
                     select new
                     {
                         i.ShelfCategoryID,
                         i.ShelfDescription

                     };
            if (sc != null)
            {
                ddlShelfCategory.DataSource = sc;
                ddlShelfCategory.DataTextField = "ShelfDescription";
                ddlShelfCategory.DataValueField = "ShelfCategoryID";
                ddlShelfCategory.DataBind();
            }
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtShelfName.Text == "" || ddlShelfCategory.SelectedValue == "select value")
        {
            txtMessage.Text = "All fields must be filled or selected";
        }
        else
        {
            Shelf sh = new Shelf();
            sh.ShelfDiscription = txtShelfName.Text;
            sh.ShelfCategoryID = Convert.ToInt32(ddlShelfCategory.SelectedValue);
            sh.CreatedDate = DateTime.Today.ToShortDateString();

            db.Shelfs.InsertOnSubmit(sh);
            db.SubmitChanges();
            txtMessage.Text = "Book Shelf Successfully added";
        }
        
    }
}