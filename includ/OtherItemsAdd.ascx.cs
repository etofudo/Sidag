using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_OtherItemsAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var itemcat = from i in db.OtherItemsCategories
                    select new
                    {
                        i.OtherItemsCategoryID,
                        i.OtherItemsCategoryDiscription
                    };
            ddlItemCategory.DataSource = itemcat;
            ddlItemCategory.DataTextField = "OtherItemsCategoryDiscription";
            ddlItemCategory.DataValueField = "OtherItemsCategoryID";
            ddlItemCategory.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(ddlItemCategory.SelectedValue == "select here" || ddlItemType.SelectedValue == "select here" ||
            txtItemName.Text == "" || txtItemAuthor.Text == "" || txtYearPublished.Text == "")
        {
            txtMessage.Text = "All fields must be filled";
        }
        else
        {
            OtherItem ot = new OtherItem();
            ot.ItemCategoryID = Convert.ToInt32(ddlItemCategory.SelectedValue);
            ot.ItemType = ddlItemCategory.SelectedValue;
            ot.ItemName = txtItemName.Text;
            ot.ItemAuthor = txtItemAuthor.Text;
            ot.YearPublished = txtYearPublished.Text;
            ot.CreatedDate = DateTime.Today.ToShortDateString();

            db.OtherItems.InsertOnSubmit(ot);
            db.SubmitChanges();
            txtMessage.Text = "Item Successfully inserted";
        }
    }
}