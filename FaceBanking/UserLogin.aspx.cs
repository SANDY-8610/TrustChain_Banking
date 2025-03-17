using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserLogin : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from regtb where  Userid='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' and  Status='Active'  ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            System.Diagnostics.Process.Start(@"I:\NewProject2020-21\PGproject\UMA\Banking\LiveRecognition\bin\x86\Debug\LiveRecognition_VS2010+", TextBox1.Text + " " + "log");

        }
        else
        {

            Response.Write("<Script> alert('Userid Or Password Incorrect!') </Script>");

        }
        con.Close();
    }
}