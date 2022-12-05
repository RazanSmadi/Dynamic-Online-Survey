using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pr4
{
    public partial class resulttt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string user = Request.QueryString["username"];
            string[] username = user.Split('@');
            Label1.Text = "Thank you" + "  " + username[0]; 


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.html?username=");

        }
    }
}