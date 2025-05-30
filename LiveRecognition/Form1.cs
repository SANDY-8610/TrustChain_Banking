﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using Luxand;
using System.Data.SqlClient;
using System.Speech;
using System.Speech.Synthesis;
using System.IO;


namespace LiveRecognition
{
    public partial class Form1 : Form
    {

        public string uname;

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=I:\NewProject2020-21\PGproject\UMA\Banking\FaceBanking\App_Data\facedb.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;

        // program states: whether we recognize faces, or user has clicked a face
        enum ProgramState { psRemember, psRecognize }
        ProgramState programState = ProgramState.psRecognize;
        string path = Path.GetDirectoryName(Application.ExecutablePath).ToString();
        String cameraName;
        bool needClose = false;
        string userName;
        String TrackerMemoryFile;
        int mouseX = 0;
        int mouseY = 0;

        // WinAPI procedure to release HBITMAP handles returned by FSDKCam.GrabFrame
        [DllImport("gdi32.dll")]
        static extern bool DeleteObject(IntPtr hObject);

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            label4.Text = uname;

           // MessageBox.Show(uname);

            TrackerMemoryFile = path + "\\tracker.dat";



            if (FSDK.FSDKE_OK != FSDK.ActivateLibrary("gyYgVWQTSzjiuGB/hH8dKgg0QrrIuhoHdfUCzD9rY+vru3WRZsaezTX6YWj9osdI/cmxY1NSdLkyWuugMPCxUG7/xNLegHLeaUpzVyKpDkaWL8tJIUsIL7xv9bhmgifPbAyTDuxF3VGxXmHkv/L/MStf9kdXV/A1vVvT93QC4vQ="))
            {
                MessageBox.Show("Please run the License Key Wizard (Start - Luxand - FaceSDK - License Key Wizard)", "Error activating FaceSDK", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }

            FSDK.InitializeLibrary();
            FSDKCam.InitializeCapturing();

            string [] cameraList;
            int count;
            FSDKCam.GetCameraList(out cameraList, out count);

            if (0 == count) {
                MessageBox.Show("Please attach a camera", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }
            cameraName = cameraList[0];

            FSDKCam.VideoFormatInfo[] formatList;
            FSDKCam.GetVideoFormatList(ref cameraName, out formatList, out count);

            int VideoFormat = 0; // choose a video format
            //pictureBox1.Width = formatList[VideoFormat].Width;
            //pictureBox1.Height = formatList[VideoFormat].Height;
            //this.Width = formatList[VideoFormat].Width + 48;
            //this.Height = formatList[VideoFormat].Height + 96;

            int tracker = 0; 	// creating a Tracker
            if (FSDK.FSDKE_OK != FSDK.LoadTrackerMemoryFromFile(ref tracker, TrackerMemoryFile)) // try to load saved tracker state
                FSDK.CreateTracker(ref tracker);
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
           // needClose = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.button1.Enabled = false;
            int cameraHandle = 0;

            int r = FSDKCam.OpenVideoCamera(ref cameraName, ref cameraHandle);
            if (r != FSDK.FSDKE_OK)
            {
                MessageBox.Show("Error opening the first camera", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Application.Exit();
            }

            int tracker = 0; 	// creating a Tracker
            if (FSDK.FSDKE_OK != FSDK.LoadTrackerMemoryFromFile(ref tracker, TrackerMemoryFile)) // try to load saved tracker state
                FSDK.CreateTracker(ref tracker); // if could not be loaded, create a new tracker

            int err = 0; // set realtime face detection parameters
            FSDK.SetTrackerMultipleParameters(tracker, "HandleArbitraryRotations=false; DetermineFaceRotationAngle=false; InternalResizeWidth=100; FaceDetectionThreshold=5;", ref err);

            while (!needClose) 
            {
                Int32 imageHandle = 0;
                if (FSDK.FSDKE_OK != FSDKCam.GrabFrame(cameraHandle, ref imageHandle)) // grab the current frame from the camera
                {
                    Application.DoEvents();
                    continue;
                }
                FSDK.CImage image = new FSDK.CImage(imageHandle);

                long[] IDs;
                long faceCount = 0;
                FSDK.FeedFrame(tracker, 0, image.ImageHandle, ref faceCount, out IDs, sizeof(long) * 256); // maximum of 256 faces detected
                Array.Resize(ref IDs, (int)faceCount);

                // make UI controls accessible (to find if the user clicked on a face)
                Application.DoEvents();

                Image frameImage = image.ToCLRImage();
                Graphics gr = Graphics.FromImage(frameImage);

                for (int i = 0; i < IDs.Length; ++i)
                {
                    FSDK.TFacePosition facePosition = new FSDK.TFacePosition();
                    FSDK.GetTrackerFacePosition(tracker, 0, IDs[i], ref facePosition);

                    int left = facePosition.xc - (int)(facePosition.w * 0.6);
                    int top = facePosition.yc - (int)(facePosition.w * 0.5);
                    int w = (int)(facePosition.w * 1.2);
                                        
    			    String name;
			        int res = FSDK.GetAllNames(tracker, IDs[i], out name, 65536); // maximum of 65536 characters

                    if (FSDK.FSDKE_OK == res && name.Length > 0)
                    { // draw name
                        StringFormat format = new StringFormat();
                        format.Alignment = StringAlignment.Center;

                        gr.DrawString("", new System.Drawing.Font("Arial", 16),
                            new System.Drawing.SolidBrush(System.Drawing.Color.LightGreen),
                            facePosition.xc, top + w + 5, format);
                        label3.Text = name;
                    }
                    else
                    {
                        label3.Text = "UnKnow FACE";

                    }

                  
                   

                    Pen pen = Pens.LightGreen;
                    if (mouseX >= left && mouseX <= left + w && mouseY >= top && mouseY <= top + w)
                    {
                        pen = Pens.Blue;
                        if (ProgramState.psRemember == programState)
                        {
                            if (FSDK.FSDKE_OK == FSDK.LockID(tracker, IDs[i]))
                            {
                                // get the user name
                                InputName inputName = new InputName();
                                inputName.bmp = new Bitmap(pictureBox1.Image);


                                if (DialogResult.OK == inputName.ShowDialog())
                                {
                                    userName = inputName.userName;
                                    if (userName == null || userName.Length <= 0)
                                    {
                                        String s = "";
                                        FSDK.SetName(tracker, IDs[i], "");
                                        FSDK.PurgeID(tracker, IDs[i]);
                                    }
                                    else
                                    {
                                        FSDK.SetName(tracker, IDs[i], userName);
                                    }
                                    FSDK.UnlockID(tracker, IDs[i]);
                                }
                            }
                        }
                    }
                    gr.DrawRectangle(pen, left, top, w, w);
                }
		        programState = ProgramState.psRecognize;

                // display current frame
                pictureBox1.Image = frameImage;
                GC.Collect(); // collect the garbage after the deletion
                FSDK.SaveTrackerMemoryToFile(tracker, TrackerMemoryFile);

              


            }
            FSDK.SaveTrackerMemoryToFile(tracker, TrackerMemoryFile);

            if (label3.Text == label4.Text)
            {

                con.Open();
                cmd = new SqlCommand("select * from facetb where NAme='" + label3.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                }
                else
                {
                    dr.Close();


                    FileStream fs = new FileStream(TrackerMemoryFile, FileMode.Open, FileAccess.Read);
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    br.Close();
                    fs.Close();

                    cmd = new SqlCommand("insert into facetb values('" + label3.Text + "',@Image)", con);
                    conv_photo();
                    cmd.Parameters.AddWithValue("@Image", bytes);
                    // con.Open();
                    cmd.ExecuteNonQuery();
                    ///con.Close();
                }
                con.Close();
            }

          
            FSDK.FreeTracker(tracker);

            FSDKCam.CloseVideoCamera(cameraHandle);
            FSDKCam.FinalizeCapturing();            
        }

        private void pictureBox1_MouseUp(object sender, MouseEventArgs e)
        {
            programState = ProgramState.psRemember;
        }

        private void pictureBox1_MouseMove(object sender, MouseEventArgs e)
        {
            mouseX = e.X;
            mouseY = e.Y;
        }

        private void pictureBox1_MouseLeave(object sender, EventArgs e)
        {
            mouseX = 0;
            mouseY = 0;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            needClose = true;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }


        string actype;

        private void button3_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from regtb where Name='" + label3.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                if (label3.Text == label4.Text)
                {


                    


                    if (dr["AccountType"].ToString() == "AccountHolder")
                    {
                        System.Diagnostics.Process.Start("http://localhost:49489/FaceBanking/AccHome.aspx?name=" + label3.Text);

                        Application.Exit();
                    }
                    else
                    {
                        System.Diagnostics.Process.Start("http://localhost:49489/FaceBanking/JoinAccHome.aspx?name=" + label3.Text);

                        Application.Exit();
                    }
                }

                else
                {
                    MessageBox.Show("UserName Incorret");

                }
            }
            else
            {
                MessageBox.Show("User Not Register");

            }

            con.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {

            if (label3.Text == "UnKnow FACE")
            {
                MessageBox.Show("Please Register Your Name");

            }
            else
            {
                if (label3.Text == label4.Text)
                {
                    needClose = true;

                    cmd = new SqlCommand("update regtb set Status='Active' where Userid='" + label3.Text + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                  



                    MessageBox.Show("Account Activate");
                    Application.Exit();

                 
                }
                else
                {
                    MessageBox.Show("UserNAme Name Incorret");
                }
            }
        }
        void conv_photo()
        {
            MemoryStream ms;


          
                FileStream fs = new FileStream(TrackerMemoryFile, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                br.Close();
                fs.Close();
                cmd.Parameters.AddWithValue("@files", bytes);
           
        }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
        int acc;

        private void button6_Click(object sender, EventArgs e)
        {
           
        }
    }
}
