using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace LiveRecognition
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            ParamHolder.Params = args;

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new LiveRecognition_VS2010.Home());
           //LiveRecognition_VS2010 .Home .una
          //  if(args =="")
           

            //DoSomething ds = new DoSomething();
            //ds.Apple = "pie";

        }

        public static class ParamHolder
        {
            public static string[] Params { get; set; }
        }

        public class DoSomething
        {
            public string Apple { get; set; }
            public string Orange { get; set; }
            public string Banana { get; set; }
            // other fruits...
        }
    }
}
