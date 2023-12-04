using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Data.SqlClient;

namespace OnlineOkulSistemi.Models
{
    public class Functions
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private string ConStr;
        private SqlDataAdapter sda;
        public Functions()
        {
            ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\zekig\OneDrive\Belgeler\OnlineOkulSistemiDB.mdf;Integrated Security=True;Connect Timeout=30";
            con = new SqlConnection(ConStr);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }
        public int SetData(string Query)
        {
            int cnt = 0;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            con.Close();
            return cnt;
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, con);
            sda.Fill(dt);
            return dt;
        }
    }
}