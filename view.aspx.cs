using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NovelReader2
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string Name = Request.QueryString["Name"];
            string data = Request.QueryString["data"];

            Label1.Text=id;
        }
       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
           
            
            
        }

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"500px\" height=\"600px\">";
            embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=1\">here</a>";
            embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
            embed += "</object>";
            ltEmbed.Text = string.Format(embed, ResolveUrl("~/FileCS.ashx?Id="), id);
        }
    }
}

