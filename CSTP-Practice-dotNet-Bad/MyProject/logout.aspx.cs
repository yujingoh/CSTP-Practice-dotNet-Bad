using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Cookies.Clear();
            //Response.Redirect("login1.aspx");

            //Response.Cookies["uname"].Value = "";
            //Response.Cookies["pwd"].Value = "";
            //Response.Cookies["role"].Value = "";
            //Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
            //Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(-1);
            //Response.Cookies["role"].Expires = DateTime.Now.AddDays(-1);

            //HttpContext.Current.Response.Cookies.Add();
            //Response.Cookies.Clear();

            //Session.Clear();
            //FormsAuthentication.SignOut();
            //FormsAuthentication.RedirectToLoginPage("login1.aspx");
            Response.Redirect("login1.aspx");

        }
    }
}