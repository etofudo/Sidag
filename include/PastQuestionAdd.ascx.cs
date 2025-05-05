using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_PastQuestionAdd : System.Web.UI.UserControl
{
    private string ext, photourl, url;
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string GetCode()
    {
        Random p = new Random();
        int id = p.Next(1, 10000);
        string str = id.ToString("D5");
        string sid = "PQ" + str;
        return sid;
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        PastQuestion p = new PastQuestion();
        p.QuestionDesc = txtdesc.Text;
        p.PastQuestionType = ddltype.SelectedValue;
        p.PastQuestionYear = txtyr.Text;
        if (this.FileUpload1.HasFile == true)
        {
            ext = System.IO.Path.GetExtension(this.FileUpload1.PostedFile.FileName);
            photourl = this.Request.ApplicationPath + "FileUpload/" + GetCode() + ext;
            this.FileUpload1.PostedFile.SaveAs(Server.MapPath(photourl));
            p.PastQuestionDetails = photourl;
        }
        db.PastQuestions.InsertOnSubmit(p);
        db.SubmitChanges();
        bkaddlab.Visible = true;
        bkaddlab.Text = "File Upload Successful";
    }
}