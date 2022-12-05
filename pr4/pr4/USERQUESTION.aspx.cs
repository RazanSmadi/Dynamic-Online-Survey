using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using System.Xml.Linq;
using System.Threading;
using System.Globalization;
using Magnum.FileSystem;
using File = System.IO.File;
using static System.Net.WebRequestMethods;
using System.Collections;
using System.Configuration;
using Directory = System.IO.Directory;


namespace pr4
{public class info{}
    public partial class USERQUESTION : System.Web.UI.Page
    {
        static string user;
        static string pass;
        static string test;
        static int x;



        protected void Page_Load(object sender, EventArgs e)
        {
            pass = Request.QueryString["password"];
            string user_result = Server.MapPath("Texts");
            var fix = Directory.EnumerateFiles(user_result).Select(Path.GetFileName);
            string[] readText = new string[] { };
            bool flag = false;
            foreach (string check in fix)
            {
                string userQuestion = check.Split('-')[0];
                if (userQuestion == pass)
                {
                    var file = Server.MapPath($"Texts/{check}");
                    readText = File.ReadAllLines(file);
                    if (readText.Length <= 0) break;
                    flag = true;
                    break;
                }
            }
            string path = Server.MapPath("TextFile1.txt");
            string[] quest = File.ReadAllLines(path);
            if (flag) { x = readText.Length + 1; Label1.Text = quest[x - 1]; }
            else { x = 1; Label1.Text = quest[0]; }






            user = Request.QueryString["username"];
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e){}
        
        protected void Button1_Click(object sender, EventArgs e)

        {
            string Path = Server.MapPath("TextFile1.txt");
            string[] quest = File.ReadAllLines(Path);
            string pass = Request.QueryString["password"];



            Label1.Text = quest[x];
            string now;
            DateTime date = DateTime.Now;

            now = date.ToString("MM.dd.yyyy");
            string path2 = Server.MapPath($"Texts/{pass + "-" + user + "-" + now}.txt");

            using (StreamWriter q = File.AppendText(path2))
            {
                if (RadioButton1.Checked == false && RadioButton2.Checked == false == RadioButton3.Checked == false && RadioButton4.Checked == false)
                {
                    Label1.Text = quest[x-1];
                }
                else
                {
                    q.Write(quest[x - 1] + ":    ");
                    if (RadioButton1.Checked == true)
                    {
                        q.Write(RadioButton1.Text + "\n");
                        RadioButton1.Checked = false;
                    }
                    else if (RadioButton2.Checked == true)
                    {
                        q.Write(RadioButton2.Text + "\n");
                        RadioButton2.Checked = false;
                    }
                    else if (RadioButton3.Checked == true)
                    {
                        q.Write(RadioButton3.Text + "\n");
                        RadioButton3.Checked = false;
                    }
                    else if (RadioButton4.Checked == true)
                    {
                        q.Write(RadioButton4.Text + "\n");
                        RadioButton4.Checked = false;
                    }
                    if (x == 9)
                    {
                        Button1.Text = "Finish";

                    }

                    if (x == 10)
                    {

                        x = 1;
                        Response.Redirect("resulttt.aspx?username=" + user);


                    }

                    x++;
                }
            }



        }
    }
}

