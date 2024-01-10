using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NovelReader2
{
    public partial class pdfopen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void Upload(object sender, EventArgs e)
        {
            Label2.Visible = true;
            string filePath = FileUpload1.PostedFile.FileName; // getting the file path of uploaded file  
            string filename1 = Path.GetFileName(filePath); // getting the file name of uploaded file  
            string ext = Path.GetExtension(filename1); // getting the file extension of uploaded file  
            string type = String.Empty;
            if (!FileUpload1.HasFile)
            {
                Label2.Text = "Please Select File"; //if file uploader has no file selected  
            }
            else
            if (FileUpload1.HasFile)
            {
                try
                {
                    switch (ext) // this switch code validate the files which allow to upload only PDF file   
                    {
                        case ".pdf":
                            type = "application/pdf";
                            break;
                    }
                    if (type != String.Empty)
                    {


                        Stream fs = FileUpload1.PostedFile.InputStream;
                        BinaryReader br = new BinaryReader(fs); //reads the binary files  
                        Byte[] bytes = br.ReadBytes((Int32)fs.Length); //counting the file length into bytes  
                        string a;
                        a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                        SqlConnection con = new SqlConnection(a);

                        con.Open();
                        SqlCommand com = new SqlCommand("Insert into DT(ID,Name,type,data) Values(@id,@name,@ContentType,@Novel)", con); //insert query
                        com.Parameters.AddWithValue("@id", TextBox1.Text);
                        com.Parameters.AddWithValue("@name", filename1);

                        com.Parameters.AddWithValue("@ContentType", type);

                        com.Parameters.AddWithValue("@Novel", bytes);
                        com.ExecuteNonQuery();
                        Response.Write("uploaded");
                    }
                    else
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;
                        Label2.Text = "Select Only pdf "; // if file is other than speified extension   
                    }
                }
                catch (Exception ex)
                {
                    Label2.Text = "Error: " + ex.Message.ToString();
                }
            }
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            string query = "Select * from DT";
            SqlDataAdapter da = new SqlDataAdapter(query, a);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(a);
            SqlCommand com = new SqlCommand("select Name,type,data from DT where id=@id", con);
            com.Parameters.AddWithValue("id", GridView1.SelectedRow.Cells[1].Text);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = dr["type"].ToString();
                Response.AddHeader("content-disposition", "attachment;filename=" + dr["Name"].ToString()); // to open file prompt Box open or Save file  
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])dr["data"]);
                Response.End();


            }
        }

        protected void View(object sender, EventArgs e)
        {


            Session ["Name"] = ((sender as LinkButton).CommandArgument);
            Session["id"] = ((sender as LinkButton).CommandArgument);
            Session["data"] = ((sender as LinkButton).CommandArgument);
            Response.Redirect("view.aspx");

            
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {

                Server.Transfer("~/Payment.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select a row.')", true);
            }
        }

        protected void btn_view_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow Products in GridView1.Rows)
            {
                string tb = (GridView1.FindControl("id") as TextBox).Text; //get tb value
                if (tb == null) // if textbox is null
                {
                }
                else
                {
                    List<string> selecteditems = new List<string>();//create a list called addeditems
                    selecteditems.Add(tb);
                    string[] addeditems = selecteditems.ToArray();//convert list to array
                    Session["view"] = addeditems; // save arraylist as session called ShoppingCart
                }
            }
            Response.Redirect("~/view.aspx");
        }
    }
}
