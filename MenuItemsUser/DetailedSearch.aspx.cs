using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NovelReader2.MenuItemsUser
{
    public partial class DetailedSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindGridView("");
            }
        }
        private void BindGridView(string searchVal)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            try
            {

                DataTable objdt = new DataTable();
                string query = searchVal == "" ? "select * from Novels;" : "select * from Novels where Name like '%" + searchVal + "%';";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                con.Open();
                da.Fill(objdt);
                con.Close();
                if (objdt.Rows.Count > 0)
                {
                    GridView1.DataSource = objdt;


                    GridView1.DataBind();
                }
            }
            catch
            {
                con.Close();
            }
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            BindGridView(txt_Search.Text);

        }

    }
}

       
