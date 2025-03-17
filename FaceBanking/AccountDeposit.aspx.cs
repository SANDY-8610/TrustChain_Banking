using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class AccountDeposit : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = Session["uname"].ToString();

        Label6.Text = Session["uacc"].ToString();

    }

    decimal dd,aa;

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {


            con.Open();
            cmd = new SqlCommand("Select * from regtb where  AccountNo='" + Session["uacc"].ToString() + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dd = Convert.ToDecimal(dr["Amount"].ToString());

            }
            else
            {
            }

            aa = dd + Convert.ToDecimal(TextBox1.Text);
            con.Close();

           



            cmd = new SqlCommand("update regtb set Amount='" + aa + "'  where AccountNo='" + Session["uacc"].ToString() + "' and Userid='" + Session["uname"].ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
        else
        {
            Response.Write("<Script> alert('Please enter Amount') </Script>");

        }

    }
}