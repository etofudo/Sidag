using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_MessageAdd : System.Web.UI.UserControl
{
    LMSDataClassesDataContext db = new LMSDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var c = from i in db.UserInfos
                    select new 
                    {
                        i.UserID,
                        name = i.LastName + " " + i.FirstName,
                        email = i.Email
                    };
            ddlUserName.DataSource = c;
            ddlUserName.DataTextField = "name";
            ddlUserName.DataValueField = "UserID";
            ddlUserName.DataBind();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (ddlUserName.SelectedValue == "select here" || txtEmail.Text == "" || txtSendMessage.Text == ""
            || txtDate.Text == "")
        {
            txtMessage.Text = "All fields must be filled";
        }
        else
        {
            SendMessage sm = new SendMessage();
            sm.CreatedDate = DateTime.Today.ToShortDateString();
            sm.UserID = Convert.ToInt32(ddlUserName.SelectedValue);
            sm.Email = txtEmail.Text;
            sm.Message = txtSendMessage.Text;
            sm.MessageDate = DateTime.Today.ToShortDateString();

            db.SendMessages.InsertOnSubmit(sm);
            db.SubmitChanges();
            txtMessage.Text = "Message Sent";
        }
    }
}