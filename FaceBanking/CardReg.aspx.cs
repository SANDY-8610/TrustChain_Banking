using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CardReg : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["uname"].ToString();
        TextBox2.Text = Session["uacc"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from cardtb where Cardno='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            dr.Close();
            Response.Write("<Script> alert('Already Register this CardNo') </Script>");

        }
        else
        {

            dr.Close();
            cmd = new SqlCommand("insert into cardtb values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "') ", con);
           // con.Open();
            cmd.ExecuteNonQuery();
            //con.Close();
            Response.Write("<Script> alert('Record Saved!') </Script>");
        }
        con.Close();


    }
}