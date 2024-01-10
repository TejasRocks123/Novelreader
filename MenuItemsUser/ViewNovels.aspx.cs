using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NovelReader2.MenuItemsUser
{
    public partial class ViewNovels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Images = Request.QueryString["Images"];
            string ID = Request.QueryString["ID"];
            string Name = Request.QueryString["Name"];
            string Rating = Request.QueryString["Rating"];
            string DateTime = Request.QueryString["Datetime"];

            Label2.Text = Images;

            Label1.Text = ID;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
            int ID = int.Parse((sender as LinkButton).CommandArgument);
            string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"1410\" height=\"800\">";
            embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=1\">here</a>";
            embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
            embed += "</object>";
            ltEmbed.Text = string.Format(embed, ResolveUrl("~/FileCS.ashx?Id="), ID);
        }

       
    }
}