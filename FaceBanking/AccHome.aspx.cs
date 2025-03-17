using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class AccHome : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    string name;

    protected void Page_Load(object sender, EventArgs e)
    {


       

        name = Request.QueryString["name"].ToString();


        Label1.Text = "Welcome.." + name;
        con.Open();
        cmd = new SqlCommand("select * from regtb where userid ='" + name + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Session["uname"] = name;
            Session["uacc"] = dr["AccountNo"].ToString();

        }
        con.Close();




       
        cmd = new SqlCommand("select * from regtb where userid ='" + name + "' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DetailsView1.DataSource = dt;
        DetailsView1.DataBind();

    }
}