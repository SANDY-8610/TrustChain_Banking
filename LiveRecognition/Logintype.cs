using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace LiveRecognition_VS2010
{
    public partial class Logintype : Form
    {
        public Logintype()
        {
            InitializeComponent();
        }


        public string otp, uname;

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == otp)
            {
                LiveRecognition.Form1 f = new LiveRecognition.Form1();
                f.uname = uname;

                f.Show();
            }
            else
            {
                MessageBox.Show("Otp Incorrect!");
            }
        }
    }
}
