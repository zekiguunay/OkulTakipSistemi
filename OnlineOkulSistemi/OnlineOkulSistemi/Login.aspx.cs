using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineOkulSistemi
{
    public partial class Login : System.Web.UI.Page
    {

       string baglanti = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\zekig\OneDrive\Belgeler\OnlineOkulSistemiDB.mdf;Integrated Security=True;Connect Timeout=30";
          
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
            
        }
        
            protected void Button1_Click(object sender, EventArgs e)
            {
                SqlConnection con = new SqlConnection(baglanti);
                con.Open();
                SqlCommand komut = new SqlCommand("select * from LogInTbl where UserName=@UserName and PssWord=@PssWord", con);
                komut.Parameters.AddWithValue("@UserName", txtUserName.Text.ToString());
                komut.Parameters.AddWithValue("@PssWord", txtSifre.Text.ToString());
                SqlDataReader oku = komut.ExecuteReader();

                if (oku.Read())
                {
                    Session["kullanıcı"] = oku["UserName"].ToString();
                    Response.Redirect("~/Views/Admin/Marks.aspx");
                }
                else
                {
                    Label1.Text = "Kullanıcı adı veya şifre hatalıdır...";
                }
                oku.Close();
                con.Close();
                con.Dispose();
            }
        

    }
}