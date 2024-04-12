using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)
        {

            SqlCommand komut = new SqlCommand("SELECET * FROM Tbl_Yemekler WHERE Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();

        }

        if (Page.IsPostBack == false)
        {
            SqlCommand komut3 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr3 = komut3.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr3;
            DropDownList1.DataBind();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/"+FileUpload1.FileName));



        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler SET KategoriAd = @p1, KategoriAdet = @p2 WHERE Kategoriid = @p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3",TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", "~/resimler/"+ FileUpload1.FileName);
        komut.Parameters.AddWithValue("@p6", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();



        SqlCommand komut2 = new SqlCommand("UPDATE Tbl-Kategoriler SET KategoriAdet = KategoriAdet+1 WHERE Kategoriid = @p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemekler SET Durum = 0 ",bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        SqlCommand komut2 = new SqlCommand("UPDATE Tbl_Yemekler SET Durum = 1 WHEERE Yemekid=@p1 ", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1",id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}