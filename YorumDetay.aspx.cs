using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad, YorumMail, Yorumicerik, YemekAd FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler on Tbl_Yorumlar," +
                "Yemekid WHERE Yorumid = @p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[5].ToString();
                TextBox4.Text = dr[4].ToString();

            }
            bgl.baglanti().Close();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("UPDATE Tbl_Yorumlar SET Yorumicerik =@p1, YorumOnay =@p2 WHERE  Yorumid=@p3",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}