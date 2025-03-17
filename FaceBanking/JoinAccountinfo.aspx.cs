using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class JoinAccountinfo : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    string name;

    protected void Page_Load(object sender, EventArgs e)
    {
        //name = Request.QueryString["name"].ToString();

        //cmd = new SqlCommand("select * from regtb where userid ='" + name + "' ", con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //DetailsView1.DataSource = dt;
        //DetailsView1.DataBind();
    }
}