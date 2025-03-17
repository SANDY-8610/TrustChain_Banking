using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AutharLink : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {



        TextBox1.Text = Session["uacc"].ToString();
        if (!IsPostBack)
        {
            Random rr = new Random();
            int i = rr.Next(11111, 99999);
            TextBox4.Text = i.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text == TextBox5.Text)
        {
            cmd = new SqlCommand("insert into aadhaartb values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + System.DateTime.Now.ToShortDateString() + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            Response.Write("<Script> alert('Record Saved!') </Script>");

        }
        else
        {

            Response.Write("<Script> alert('Captcha Incorrect!') </Script>");

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Random rr = new Random();
        int i = rr.Next(11111, 99999);
        TextBox4.Text = i.ToString();
    }
}