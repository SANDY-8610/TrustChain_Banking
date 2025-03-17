using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class NewUser : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       

      
    }

    int tacc, acc;

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "AccountHolder")
        {
            con.Open();
            cmd = new SqlCommand("select * from regtb where Accountno='" + TextBox7.Text + "' and AccountType='AccountHolder' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                Response.Write("<Script> alert('Already Register This Account Holder') </Script>");
            }
            else
            {
                dr.Close();

                cmd = new SqlCommand("insert into regtb  values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','0','wait','0')", con);
                //con.Open();
                cmd.ExecuteNonQuery();
                //con.Close();
              // 


            }

            con.Close();

        }
        else
        {

            con.Open();
            cmd = new SqlCommand(" select joinac from regtb where Accountno='" + DropDownList2.Text + "' and AccountType='AccountHolder'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                tacc = Convert.ToInt32(dr["joinac"].ToString());
            }
            else
            {

                tacc = 0;
            }
            con.Close();



            con.Open();
            cmd = new SqlCommand(" select count(*) as  count from regtb where Accountno='" + DropDownList2.Text + "' and AccountType='JoinAccountHolder' ", con);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
                acc = Convert.ToInt32(dr1["count"].ToString());
            }
            else
            {

                acc = 0;
            }
            con.Close();

            Response.Write("<Script> alert('"+tacc +"') </Script>");

            if (tacc > acc)
            {

                con.Open();
                cmd = new SqlCommand("select * from regtb where Accountno='" + DropDownList2.Text + "' and Userid='" + TextBox8.Text + "' ", con);
                SqlDataReader dr11 = cmd.ExecuteReader();
                if (dr11.Read())
                {
                    dr11.Close();
                    Response.Write("<Script> alert('Already Register This userName') </Script>");
                }
                else
                {
                    dr11.Close();

                    cmd = new SqlCommand("insert into regtb  values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','0','wait','0')", con);
                   // con.Open();
                    cmd.ExecuteNonQuery();
                    //con.Close();
                   // System.Diagnostics.Process.Start(@"D:\2017CompleteProject\Alagappa\Banking\LiveRecognition\bin\Debug\LiveRecognition_VS2010+", TextBox8.Text);


                }

                con.Close();

            }
            else
            {

                Response.Write("<Script> alert('No JoinAccount Found') </Script>");
            }

        }

      
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "AccountHolder")
        {

          

            TextBox7.Visible = true;
            DropDownList2.Visible = false;

          

        }
        else
        {
            con.Open();
            cmd = new SqlCommand("select * from regtb", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                DropDownList2.Items.Add(dr["AccountNo"].ToString());

            }
            con.Close();
            TextBox7.Visible = false ;
            DropDownList2.Visible = true;


            if (DropDownList2.Items.Count > 0)
            {
            }
            else
            {
                Response.Write("<Script> alert('No Account Found') </Script>");
            }
        }
    }
}