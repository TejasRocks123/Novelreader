using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;    

namespace NovelReader2.MenuItemsUser
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            string Email = txt_Email.Text;
            string Report = txt_Report.Text;
            string MNO = txt_MN.Text;
            string Uname = txt_Uname.Text;

            string insertQuery = "Insert into Report(UserName,Email,MobileNo,Report) Values(@uname,@email,@mobile,@report)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@uname", Uname);

            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@mobile", MNO);
            cmd.Parameters.AddWithValue("@report", Report);
            cmd.ExecuteNonQuery();

        }
    }
}