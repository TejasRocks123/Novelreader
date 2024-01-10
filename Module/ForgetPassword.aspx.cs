using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


namespace NovelReader2.User_Credentials
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btn_Cngpsw_Click(object sender, EventArgs e)
        {
            try
            {
                string Email = txt_Email.Text;
                string Password = txt_psw.Text;
                string RePassword = txt_Repsw.Text;
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from UserCredentials where Email='"+ Email+"'",con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    con.Close();
                    if(Password== RePassword)
                    {
                        con.Open();
                        cmd=new SqlCommand("update UserCredentials set Password='"+ Password + "'Where Email='"+ Email + "'",con);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {
                    Response.Write("incorrect Email");
                }

            }
            catch(Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
            

        }
    }
}