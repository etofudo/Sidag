using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_BookLoanAddPg : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        txted.Text = DateTime.Today.ToShortDateString();
        txty.Text = DateTime.Today.AddDays(7).ToString();
        if (!IsPostBack)
        {
            var b = from i in db.Books
                    select new
                    {
                        i.BookID,
                        i.BookName
                    };
            if (b != null)
            {
                ddlbkcat.DataSource = b;
                ddlbkcat.DataTextField = "BookName";
                ddlbkcat.DataValueField = "BookID";
                ddlbkcat.DataBind();

            }
            var u = from i in db.LibUsers
                    select new
                    {
                        i.LibUserID,
                        name = i.FirstName + " " + i.LastName
                    };
            if (u != null)
            {
                DropDownList1.DataSource = u;
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "LibUserID";
                DropDownList1.DataBind();
            }
           
            /*if (v != null)
            {
                ddlUserCat.DataSource = v;
                ddlUserCat.DataTextField = "UserCategoryDiscription";
                ddlUserCat.DataValueField = "UserCategoryID";
                ddlUserCat.DataBind();
            }*/
        }
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
         
        {
            LoanBook lb = new LoanBook();
            lb.LibUserID = Convert.ToInt32(DropDownList1.SelectedValue);
            lb.BookID = Convert.ToInt32(ddlbkcat.SelectedValue);
            if (txted.Text == DateTime.Today.ToShortDateString())
            {
                lb.LoanDate = txted.Text;
            }
            else
            {
                bkaddlab.Text = "Please select correct date";
            }
            lb.DueDate = DateTime.Today.AddDays(7).ToString();
            lb.BkStatus = "borrowed";
            db.LoanBooks.InsertOnSubmit(lb);
            db.SubmitChanges();
            bkaddlab.Text = "Record successfully inserted into Database";
        }

    }
}