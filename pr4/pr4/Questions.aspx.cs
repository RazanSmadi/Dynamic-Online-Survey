using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pr4
{
    public partial class Questions : System.Web.UI.Page
    {

        static string[] array = new string[11];

        static int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Textbox.Text == "")
            {
                return;
            }

            array[x] = Textbox.Text;
            x++;
            Textbox.Text = "";

            if (x == 10) x = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("QA.txt");
            File.WriteAllLines(path, array);


            Table tb = new Table();
            tb.Width = new Unit("835px");
            tb.Height = new Unit("600px");
            tb.BackColor = System.Drawing.Color.White;
            tb.BorderWidth = 1;
            tb.BorderStyle = BorderStyle.Solid;


            TableCell ttt = new TableCell();

            TableRow tt = new TableRow();
            ttt.Text = "QUESTIONS" + "<hr>";
            tt.Cells.Add(ttt);
            tb.Rows.Add(tt);
            for (int i = 0; i < array.Length - 1; i++)
            {
                TableRow tr = new TableRow();
                TableCell tc1 = new TableCell();
                tc1.Text = array[i] + "<hr>";
                tr.Cells.Add(tc1);
                tb.Rows.Add(tr);
                if (array.Length == 10)
                {
                    tc1.Text = array[array.Length - 1];
                    tr.Cells.Add(tc1);
                    tb.Rows.Add(tr);
                }
            }


            form1.Controls.Add(tb);
            Button1.Visible = false;
            Button2.Visible = false;

        }
    }
}