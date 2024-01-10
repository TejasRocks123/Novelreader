﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

namespace NovelReader2.MenuItemsUser
{
    public partial class UserSN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string a;
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string contentType = FileUpload1.PostedFile.ContentType;
                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                        SqlConnection con = new SqlConnection(a);

                        int length = UploadImage.PostedFile.ContentLength;
                        byte[] pic = new byte[length];
                        UploadImage.PostedFile.InputStream.Read(pic, 0, length);
                        con.Open();
                        SqlCommand com = new SqlCommand("Insert into USerNovels(ID,Image,Name,ContentType,Genre,Novel) Values(@id,@image,@name,@ContentType,@genre,@Novel)", con); //insert query
                        com.Parameters.AddWithValue("@id", txt_ID.Text);
                        com.Parameters.AddWithValue("@image", pic);
                        com.Parameters.AddWithValue("@name", txt_Name.Text);
                        com.Parameters.AddWithValue("@ContentType", contentType);
                        com.Parameters.AddWithValue("@genre", txt_Genre.Text);
                        com.Parameters.AddWithValue("@Novel", bytes);


                        com.ExecuteNonQuery();

                        Label1.Text = "Novel Submitted Successfully";
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    
    }
}