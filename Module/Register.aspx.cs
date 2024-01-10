using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace NovelReader2.User_Credentials
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btn_Signup_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "Select count(*) from UserCredentials Where UserName='" + txt_Uname.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            
            if (temp == 1)
            {
                Response.Write("User Exists");
               
            }
            else
            {
                try
                {
                    
                    string insertQuery = "Insert into UserCredentials(UserName,Password,Email,MobileNo) Values(@uname,@password,@email,@mobile)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@uname", txt_Uname.Text);
                    cmd.Parameters.AddWithValue("@password", txt_psw.Text);
                    cmd.Parameters.AddWithValue("@email", txt_Email.Text);
                    cmd.Parameters.AddWithValue("@mobile", txt_MNO.Text);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex.ToString());
                }
                conn.Close();
            }
            
            
        }   
    }
}