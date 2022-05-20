using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

namespace ShoppingCart
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            //int flag = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shopingConnectionString1"].ConnectionString);
            string s = "select * from login where UserName = N'" + TextBox1.Text + "' and Pwd = N'" + TextBox2.Text + "'";
            SqlCommand com = new SqlCommand(s, con);
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                SqlDataReader dtr;
                dtr = com.ExecuteReader();
                if (dtr.Read())
                {
                    //Response.Cookies["uname"].Value = TextBox1.Text;
                    //Response.Cookies["pwd"].Value = TextBox2.Text;
                    //Response.Cookies["role"].Value = dtr[2].ToString();

                    Session["uname"] = TextBox1.Text;
                    Session["role"] = dtr[2].ToString();
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                }
                else
                {
                    Label1.Text = "Credential is incorrect. Please try again.";
                }

                //while (dtr.Read())
                //{
                //    if (dtr[0].ToString().Equals(TextBox1.Text) && dtr[1].ToString().Equals(TextBox2.Text))
                //    {
                        

                //        Response.Cookies["uname"].Value = TextBox1.Text;
                //        Response.Cookies["pwd"].Value = TextBox2.Text;
                //        Response.Cookies["role"].Value = dtr[2].ToString();
                //        FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);

                //    }
                //    else
                //    {
                //        Label1.Text = "Credential are incorrect";
                //    }
                //}
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }


    }
}