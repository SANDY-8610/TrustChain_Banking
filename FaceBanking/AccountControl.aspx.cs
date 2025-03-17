using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AccountControl : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["uname"].ToString();
        TextBox2.Text = Session["uacc"].ToString();

        bind();

    }

    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string id = grdrow.Cells[0].Text;

        con.Open();
        cmd = new SqlCommand("update regtb  set Status='inActive' where id='" + id + "' ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        bind();
        Response.Write("<Script> alert('Join Account Member InActive') </Script>");

    }

    private void bind()
    {
        cmd = new SqlCommand("select * from regtb where Accountno='" + Session["uacc"].ToString() + "' and AccountType='JoinAccountHolder' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update regtb set joinac='" + DropDownList1.Text + "' where Accountno='" + Session["uacc"].ToString() + "' and AccountType='AccountHolder' ", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        Response.Write("<Script> alert('Join Account Member Count Update!') </Script>");

    }
}