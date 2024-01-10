using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace NovelReader2.MenuItemsAdmin
{
    public partial class Delete : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection com = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
        }       
       
        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            Label ID = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string Delete = "delete from Novels where ID=" + ID.Text;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Delete;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            Response.Redirect("Delete.aspx");
        }
    }
}