using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_SearchModel : System.Web.UI.UserControl
{
    LmsDataClassesDataContext db = new LmsDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var s1 = (from i in db.Books
                  where i.BookName == TextBox1.Text
                  select i).SingleOrDefault();
        if (s1 != null)
        {
            TextBox2.Text = "Name: " + s1.BookName + "\n"
                + "Author: " + s1.Author + "\n"
                + "Edition: " + s1.Edition;
        }
        else
            TextBox2.Text = "The Book is not Available";
    }
}