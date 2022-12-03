using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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
                HtmlTableRow tRow = new HtmlTableRow();
                HtmlTableCell td = new HtmlTableCell();
                td.InnerText = Convert.ToString(counter);
                tRow.Controls.Add(td);
                counter++;

                HtmlTableCell second = new HtmlTableCell();
                second.InnerText = file[0];
                tRow.Controls.Add(second);

                HtmlTableCell third = new HtmlTableCell();
                third.InnerText = file[1];
                tRow.Controls.Add(third);

                HtmlTableCell last = new HtmlTableCell();
                last.InnerText = $"<a href=#>{filePath}</a>";
                tRow.Controls.Add(last);

                resultTable.Rows.Add(tRow);
                DynamicHyperLink dynamicHyperLink =
            (DynamicHyperLink)sender;
                // method 1 
                //HyperLinkField DynLink = new HyperLinkField();
                //DynLink.Text = "This Link Is been Created Dynamically from code behind";
                //DynLink.NavigateUrl = "Test-1-1.txt";
                //tRow.Controls.Add(DynLink);
                //resultTable.Rows.Add(tRow);
                // method 2 
                //HyperLink DynLink = new HyperLink();
                //DynLink.ID = "DynLink";
                //DynLink.Text = "This Link Is been Created Dynamically from code behind";
                //DynLink.NavigateUrl = "Test-1-1.txt";


            }
        }
    }
}