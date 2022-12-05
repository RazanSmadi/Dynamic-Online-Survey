using Magnum.Cryptography.PKI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using File = System.IO.File;
using System.IO;
using Magnum.FileSystem;

namespace pr4
{
    public partial class WECOMING : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.QueryString["username"];
            string[] username = user.Split('@');
            Label1.Text = username[0];
            string pass = Request.QueryString["password"];
        }
        
        static DateTime date =DateTime.Now;

        private static object user;


        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = Request.QueryString["username"];
            string pass = Request.QueryString["password"];
            string value = Request.QueryString["start"];
            string[] username = user.Split('@');
            Response.Redirect("USERQUESTION.aspx?username=" + user + "&password=" + pass + "&start=" + value );

        }        
    }
}