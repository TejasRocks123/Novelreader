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


namespace NovelReader2
{
    public partial class datetime_eg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "Insert into DT(Name,DateTime) Values(@uname,@today)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@uname", txt_Name.Text);
            cmd.Parameters.AddWithValue("@today", DateTime.Now);
            cmd.ExecuteNonQuery();
            Response.Redirect("datetime eg.aspx");
        }
    }
}