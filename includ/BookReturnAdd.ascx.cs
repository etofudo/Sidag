using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookReturnAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var ln = from i in db.LoanBooks
                     select new
                     {
                         i.LoanBookID,
                         loanBook = i.Book.BookName
                     };
            if (ln != null)
            {
                ddlBookName.DataSource = ln;
                ddlBookName.DataTextField = "loanBook";
                ddlBookName.DataValueField = "LoanBookID";
                ddlBookName.DataBind();

            }

        }
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if(ddlBookName.SelectedValue == "select value" 
            || ddlUserName.SelectedValue == "select value"
            || txtComment.Text == "")
        {
            txtMessage.Text = "All fields must be filled";
        }
        else
        {
            BookReturn br = new BookReturn();
            br.UserID = Convert.ToInt32(ddlUserName.SelectedValue);
            br.Comments = txtComment.Text;
            br.LoanBookID = Convert.ToInt32(ddlBookName.SelectedValue);
            br.ReturnDate = DateTime.Today.ToString();
            br.Status = "Book Returned"; 
            db.BookReturns.InsertOnSubmit(br);
            db.SubmitChanges();
            txtMessage.Text = "Book has being successfully returned";


            //br.Comments = tt.Text;
        }

    }
    /*protected void ddlUserCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlUserCat.SelectedValue == "Student")
        {
            var sn = from i in db.UserInfos
                     where i.UserCategory.UserCategoryDiscription == ddlUserCat.SelectedValue
                     select new
                     {
                         i.UserID,
                         name = i.FirstName + " " + i.LastName
                     };
            if (sn != null)
            {
                ddlUserName.DataSource = sn;
                ddlUserName.DataTextField = "name";
                ddlUserName.DataValueField = "UserID";
                ddlUserName.DataBind();

            }
        }
        else
        {
            var sn = from i in db.UserInfos
                     where i.UserCategory.UserCategoryDiscription == ddlUserCat.SelectedValue
                     select new
                     {
                         i.UserID,
                         name = i.FirstName + " " + i.LastName
                     };
            if (sn != null)
            {
                ddlUserName.DataSource = sn;
                ddlUserName.DataTextField = "name";
                ddlUserName.DataValueField = "UserID";
                ddlUserName.DataBind();
            }

        }
    }*/
    protected void ddlUserName_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}