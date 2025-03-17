using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;
using System.Net;


namespace LiveRecognition_VS2010
{
    public partial class Home : Form
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=I:\NewProject2020-21\PGproject\UMA\Banking\FaceBanking\App_Data\facedb.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;

        public Home()
        {
            InitializeComponent();
        }
        public string uname;

        private void button1_Click(object sender, EventArgs e)
        {
            string pae = LiveRecognition.Program.ParamHolder.Params[0];
            MessageBox.Show(pae);
           

            LiveRecognition.Form1 f = new LiveRecognition.Form1();
            f.uname = pae;

            f.Show();

           


        }
        string TrackerMemoryFile;

        private void button2_Click(object sender, EventArgs e)
        {
            string pae = LiveRecognition.Program.ParamHolder.Params[0];
            MessageBox.Show(pae);
            LiveRecognition_VS2010.Login f = new LiveRecognition_VS2010.Login();
            f.uname = pae;


            TrackerMemoryFile = "D:\\tracker.dat";


          


            f.Show();
        }

        private void Home_Load(object sender, EventArgs e)
        {
            string pae1 = LiveRecognition.Program.ParamHolder.Params[1];
           // MessageBox.Show(pae1);

            if (pae1 == "Act")
            {

                button2.Enabled = false;
                button3.Enabled = false;
            }
            else
            {

                button1.Enabled = false;
              

            }
            //string pae = LiveRecognition.Program.ParamHolder.Params[0];

            //string[] words = pae.Split(',');
            //foreach (string word in words)
            //{
            //    Console.WriteLine(word);
            //}
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

            string pae = LiveRecognition.Program.ParamHolder.Params[0];
            con.Open();
            cmd = new SqlCommand("select * from regtb where Userid='" + pae + "' ", con);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {

                Random rr = new Random();
                int i = rr.Next(1111, 9999);

                sendmessage(dr1["Mobile"].ToString(), "Your FACE OTP :" + i);

                Logintype ll = new Logintype();
                ll.otp = i.ToString();
                ll.uname = pae;
                ll.Show();



            }
            con.Close();
        }

        public void sendmessage(string targetno, string message)
        {

            String query = "http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=fantasy5535&password=1163974702&sendername=Sample&mobileno=" + targetno + "&message=" + message;
            WebClient client = new WebClient();
            Stream sin = client.OpenRead(query);
           
            MessageBox.Show("Message Send");
        }
    }
}
