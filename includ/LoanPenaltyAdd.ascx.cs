using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_LoanPenaltyAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var c = from i in db.LoanBooks
                    where i.Fine > 0
                    select new
                    {
                        i.LoanBookID,
                        i.UserID,
                        UserName = i.UserInfo.LastName + " " + i.UserInfo.FirstName,
                        BookName = i.Book.BookName,
                        i.DueDate,
                        i.Fine
                    };
            ddlUserName.DataSource = c;
            ddlUserName.DataTextField = "UserName";
            ddlUserName.DataValueField = "UserID";
            ddlUserName.DataBind();

            ddlLoanBook.DataSource = c;
            ddlLoanBook.DataTextField = "BookName";
            ddlLoanBook.DataValueField = "LoanBookID";
            ddlLoanBook.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(ddlUserName.SelectedValue == "select here" || ddlLoanBook.SelectedValue == "select here" ||
            ddlStatus.SelectedValue == "select here" || txtDueDate.Text == "" || txtTotalFine.Text == "")
        {
            txtMessage.Text = "All fields must be filled";
        }
        else
        {
            LoanPenalty lp = new LoanPenalty();
            lp.UserID = Convert.ToInt32(ddlUserName.SelectedValue);
            lp.LoanBookID = Convert.ToInt32(ddlLoanBook.SelectedValue);
            lp.Status = ddlStatus.SelectedValue;
            lp.LoanPenaltyDate = txtDueDate.Text;
            lp.TotalFine = Convert.ToInt32(txtTotalFine.Text);
            lp.CreatedDate = DateTime.Today.ToShortDateString();

            db.LoanPenalties.InsertOnSubmit(lp);
            db.SubmitChanges();
            txtMessage.Text = "User successfully fined";
        }
    }
}