using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace test
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string folderPath = Server.MapPath("Texts");
            var filenames = Directory.EnumerateFiles(folderPath).Select(Path.GetFileName); 
            int counter = 1;
            foreach (string filePath in filenames)
            {
                string[] file = filePath.Split('-');
                TableRow tRow = new TableRow();
                TableCell td = new  TableCell();
                td.Text = Convert.ToString(counter);
                tRow.Controls.Add(td);
                counter++;

                TableCell second = new TableCell();
                second.Text = file[0];
                tRow.Controls.Add(second);

                TableCell third = new  TableCell();
                third.Text = file[1];
                tRow.Controls.Add(third);
                TableCell last = new  TableCell();
                HyperLink DynLink = new HyperLink();
                DynLink.Text = filePath;
                DynLink.NavigateUrl =$"Texts/{filePath}";
                 last.Controls.Add(DynLink);
                tRow.Controls.Add(last);
                resultTable.Rows.Add(tRow);
          


            }
        }
    }
}