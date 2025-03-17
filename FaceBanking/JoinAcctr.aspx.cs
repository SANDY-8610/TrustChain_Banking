using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Net;

public partial class JoinAcctr : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\facedb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

      

        Label11.Text = Session["juname"].ToString();
        TextBox1.Text = Session["jacc"].ToString();

        con.Open();
        cmd = new SqlCommand("select * from regtb where AccountNo !='" + TextBox1.Text + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList4.Items.Add(dr["AccountNo"].ToString());

        }
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];


        if (TextBox6.Text == "")
        {
            Response.Write("<Script> alert('Get  your Otp!') </Script>");
        }
        else
        {
            if (TextBox6.Text == Session["OTP"].ToString())
            {

             


                con.Open();
                cmd = new SqlCommand("select * from regtb where AccountNo ='" + TextBox1.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    amt = Convert.ToDecimal(dr["Amount"].ToString());

                }

                con.Close();

                bal = amt - Convert.ToDecimal(TextBox4.Text);


                if (bal < 0)
                {
                    Response.Write("<Script> alert('Balance Low') </Script>");


                }
                else
                {


                    con.Open();
                    cmd = new SqlCommand("select * from regtb where AccountNo='" + Session["jacc"].ToString() + "' and AccountType='AccountHolder' ", con);
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    if (dr1.Read())
                    {


                        sendmail(dr1["Email"].ToString(), "Join Account  : " + Session["juname"].ToString() + "   Transfer Account   :  " + DropDownList4.Text + "   Amount : " + TextBox4.Text + "  IPADDRESS  : " + ipaddress + " Balance Amount" + bal);

                    }
                    con.Close();

                    cmd = new SqlCommand("insert into transtb values('" + Label11.Text + "','" + TextBox1.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + System.DateTime.Now.ToShortDateString() + "') ", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<Script> alert('Record Saved!') </Script>");



                    total = total + Convert.ToDecimal(TextBox4.Text);



                    cmd = new SqlCommand("update regtb set Amount='" + total + "' where AccountNo='" + DropDownList1.Text + "'  ", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    cmd = new SqlCommand("update regtb set Amount='" + bal + "' where AccountNo='" + TextBox1.Text + "'  ", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
               
               






            }
            else
            {
                Response.Write("<Script> alert('Otp Incorrcet!') </Script>");
            }

        }
       


    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from cardtb where Accountno='" + TextBox1.Text + "' and  CardType='" + DropDownList1.Text + "' and  CardName='" + DropDownList2.Text + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList3.Items.Add(dr["CardNo"].ToString());
        }

        con.Close();

    }
    decimal total;
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from regtb where AccountNo='" + DropDownList4.Text + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            total = Convert.ToDecimal(dr["Amount"].ToString());
            TextBox3.Text = dr["Userid"].ToString();
        }
        else
        {
        }

        con.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {



        con.Open();
        cmd = new SqlCommand("select * from regtb where Userid='" + Session["juname"].ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Random rr = new Random();
            int i = rr.Next(1111, 9999);
            Session["OTP"] = i.ToString();


            sendmessage(dr["Mobile"].ToString(), "Your Otp" + i.ToString());

            string to = dr["Email"].ToString();
            string from = "projectmailm@gmail.com";
            // string subject = "Key";
            // string body = TextBox1.Text;
            string password = "qmgn xecl bkqv musr";
            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = "OTP";
                mm.Body = "Your Otp" + i.ToString();
                //if (fuAttachment.HasFile)
                //{
                //string FileName = Server.MapPath(ff);
                //mm.Attachments.Add(new Attachment(FileName));
                //}
                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential(from, password);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email has sent.');", true);



            }



        }
        else
        {

        }

        con.Close();

    }
    private void sendmail(string too, string msg)
    {

        string to = too;
        string from = "projectmailm@gmail.com";
        // string subject = "Key";
        // string body = TextBox1.Text;
        string password = "qmgn xecl bkqv musr";
        using (MailMessage mm = new MailMessage(from, to))
        {
            mm.Subject = "Alert";
            mm.Body = msg;

            //Image image = pictureBox1.Image;

            //System.IO.MemoryStream stream = new System.IO.MemoryStream();
            //image.Save(stream, ImageFormat.Jpeg);
            //stream.Position = 0;

            //mm.Attachments.Add(new Attachment(stream, "Screenshot.jpg"));

            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential(from, password);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);

            //  Response.Write("<Script> alert('Mail Send!') </Script>");



        }
    }
    public void sendmessage(string targetno, string message)
    {

        String query = "http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=fantasy5535&password=1163974702&sendername=Sample&mobileno=" + targetno + "&message=" + message;
        WebClient client = new WebClient();
        Stream sin = client.OpenRead(query);
        Response.Write("<script> alert( targetno ) </script>");
    }
    decimal amt, bal;
    int adc;

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from regtb where AccountNo ='" + TextBox1.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            amt = Convert.ToDecimal(dr["Amount"].ToString());

        }

        con.Close();

        bal = amt - Convert.ToDecimal(TextBox4.Text);


        if (bal < 0)
        {
            adc = 0;
            Response.Write("<script> alert('Balance') </script>");
        }
        else
        {
            adc = 1;

        }
    }
}