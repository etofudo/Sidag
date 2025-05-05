using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_LoanBookAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtLoanDate.Text = DateTime.Today.ToShortDateString();
        txtDueDate.Text = DateTime.Today.AddDays(7).ToString();
        if (!IsPostBack)
        {
            var b = from i in db.Books
                    select new
                    {
                        i.BookID,
                        i.BookName
                    };
            if(b != null)
            {
                ddlBookName.DataSource = b;
                ddlBookName.DataTextField = "BookName";
                ddlBookName.DataValueField = "BookID";
                ddlBookName.DataBind();

            }
            var u = from i in db.UserInfos
                    select new
                    {
                        i.UserID,
                        name = i.FirstName + " " + i.LastName
                    };
            if (u != null)
            {
                ddlUserName.DataSource = u;
                ddlUserName.DataTextField = "name";
                ddlUserName.DataValueField = "UserID";
                ddlUserName.DataBind();
            }
            var v = from i in db.UserCategories
                    select new
                    {
                        i.UserCategoryDiscription,
                        i.UserCategoryID
                    };
            /*if (v != null)
            {
                ddlUserCat.DataSource = v;
                ddlUserCat.DataTextField = "UserCategoryDiscription";
                ddlUserCat.DataValueField = "UserCategoryID";
                ddlUserCat.DataBind();
            }*/
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        


    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        if (ddlUserName.SelectedValue == "select value" || ddlBookName.SelectedValue == "select value"
            || txtLoanDate.Text == "" || txtDueDate.Text == "" ||
            ddlStatus.SelectedValue == "" || txtApprovedBy.Text == "" || txtFine.Text == "")
        {
            txtMessage.Text = "All fields must filled";
        }
        else
        {
            LoanBook lb = new LoanBook();
            lb.UserID = Convert.ToInt32(ddlUserName.SelectedValue);
            lb.BookID = Convert.ToInt32(ddlBookName.SelectedValue);
            if (txtLoanDate.Text == DateTime.Today.ToShortDateString())
            {
                lb.LoanDate = txtLoanDate.Text;
            }
            else
            {
                txtMessage.Text = "Please select correct date";
            }
            lb.DueDate = DateTime.Today.AddDays(7).ToString();
            lb.Status = ddlStatus.SelectedValue;
            db.LoanBooks.InsertOnSubmit(lb);
            db.SubmitChanges();
            txtMessage.Text = "Record successfully inserted into Database";
        }
    }
}