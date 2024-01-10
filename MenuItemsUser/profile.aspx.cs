using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace NovelReader2.MenuItemsAdmin
{
    public partial class profile : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection com = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

            this.DataBind();
           
        }
        

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            try
            {
                string a;
                a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                SqlConnection con = new SqlConnection(a);
                con.Open();
                if (!FileUpload1.HasFile)
                {
                    Label1.Text = "Please Insert Image";
                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];
                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                    string UserName = txt_Username.Text;                 
                   
                    SqlCommand com = new SqlCommand("Select * from UserCredentials where UserName='" + UserName + "'", con);
                    SqlDataReader dr = com.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        con.Close();
                        con.Open();
                        com = new SqlCommand("update UserCredentials set Image='" + pic + "'Where UserName='" + UserName + "'", con);
                        com.ExecuteNonQuery();
                        Label1.Text = "File Uploaded Successfully";


                    }
                    else
                    {
                        Response.Write("incorrect UserName");
                    }                
                                     
                    
                }
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
        
    }
}