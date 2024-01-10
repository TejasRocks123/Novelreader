using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace NovelReader2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            Response.Redirect("Register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "Select count(*) from UserCredentials Where UserName='" + txt_Username.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery= "Select Password from UserCredentials Where UserName='" + txt_Username.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkPasswordQuery, conn);
                string Password = passcomm.ExecuteScalar().ToString().Replace(" ","");
                string UserName = txt_Username.Text;
                
                if(UserName == "Admin")
                {
                    Session["new"] = txt_Username.Text;
                    Response.Redirect("AdminModule.aspx");
                }
                else
                {
                    Response.Redirect("UserModule.aspx");
                   
                }

            }
            else
            {
                Response.Write("UserName is not correct");
            }
            
        }
    }
}