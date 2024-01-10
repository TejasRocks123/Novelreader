
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NovelReader2
{
    /// <summary>
    /// Summary description for FileCS
    /// </summary>
    public class FileCS : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int ID = int.Parse(context.Request.QueryString["ID"]);
            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Name, Novel, ContentType FROM Novels WHERE ID=@ID";
                    cmd.Parameters.AddWithValue("@ID", ID);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Novel"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }

            context.Response.Buffer = true;
            context.Response.Charset = "";
            if (context.Request.QueryString["download"] == "1")
            {
                context.Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            }
            context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            context.Response.ContentType = "application/pdf";
            context.Response.BinaryWrite(bytes);
            context.Response.Flush();
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}