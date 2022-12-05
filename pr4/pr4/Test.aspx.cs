using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pr4
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("Texts");
            var filenames = Directory.EnumerateFiles(folderPath).Select(Path.GetFileName);
           
            int counter = 1;
            int completedcounter = 0;
            int notCompletedcounter = 0;
            foreach (string filePath in filenames)
            {
                string[] lines = File.ReadAllLines(Server.MapPath($"Texts/{filePath}"));

                if (lines.Length == 10)
                {
                    completedcounter++;
                }
                
                string[] file = filePath.Split('-');
                TableRow tRow = new TableRow();
                TableCell td = new TableCell();
                td.Text = Convert.ToString(counter);
                tRow.Controls.Add(td);
                counter++;
                TableCell second = new TableCell();
                second.Text = file[0];
                tRow.Controls.Add(second);

                TableCell third = new TableCell();
                third.Text = file[1];
                tRow.Controls.Add(third);
                TableCell last = new TableCell();
                HyperLink link = new HyperLink();
                string[] name = file[1].Split('@');
                link.Text = name[0].ToUpper();
                link.NavigateUrl = $"Texts/{filePath}";
                last.Controls.Add(link);
                tRow.Controls.Add(last);
                resultTable.Rows.Add(tRow);

            }
            notCompletedcounter = counter - completedcounter-1;
            string[] emlines = File.ReadAllLines(Server.MapPath("Employees.txt"));
            completed.InnerText = Convert.ToString(completedcounter);
            notCompleted.InnerText = Convert.ToString(notCompletedcounter);
            employeesNum.InnerText = Convert.ToString(emlines.Length);
            missing.InnerText = Convert.ToString(emlines.Length - (completedcounter + notCompletedcounter));

        }
    }
}