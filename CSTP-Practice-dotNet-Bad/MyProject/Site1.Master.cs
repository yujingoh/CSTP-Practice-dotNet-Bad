using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ShoppingCart
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                //ImageButton1.Visible = false;
                if ((Request.Cookies["role"] != null) && (Request.Cookies["role"].Value == "admin"))
                {
                    ImageButton2.Visible = true;
                    ImageButton3.Visible = true;
                    
                }
                else
                {
                    
                    //ImageButton2.Visible = false;
                    //ImageButton3.Visible = false;
                    
                }

                //if ((Request.Cookies["uname"] != null))
                if ((Session["uname"] != null))
                    {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shopingConnectionString1"].ConnectionString);
                    //string s = "select * from UDetail where UserId = N'" + Request.Cookies["uname"].Value + "'";
                    string s = "select * from UDetail where UserId = N'" + Session["uname"] + "'";
                    SqlCommand com = new SqlCommand(s, con);
                    con.Open();
                    if (con.State == ConnectionState.Open)
                    {
                        SqlDataReader dtr;
                        dtr = com.ExecuteReader();
                        if (dtr.Read())
                        {

                            //Label1.Text = "Welcome " + dtr.GetValue(0) + " " + dtr.GetValue(1);
                            Label2.Text = "Welcome " + dtr.GetValue(0);
                            //Label2.Text = "Welcome " + Request.Cookies["uname"].Value;
                            //Label3.Text = "Welcome " + Request.Cookies["uname"].Value;
                        }
                    }
                }
            }
            else
            {
                //ImageButton1.Visible = true;
                ImageButton2.Visible = false;
            }
            

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

       
    }
}