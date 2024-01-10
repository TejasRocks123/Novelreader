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

namespace NovelReader2.MenuItemsAdmin
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label MNO = GridView1.Rows[e.RowIndex].FindControl("lbl_MobileNo") as Label;
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string Delete = "delete from Report where MobileNo=" + MNO.Text;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Delete;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            Response.Redirect("ReportAdmin.aspx");

        }
    }
}