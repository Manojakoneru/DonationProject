using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace DonationProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into donateByAmount values (@Firstname, @Lastname, @email, @Amount)", con);
                cmd.Parameters.AddWithValue("Firstname", TextBox1.Text);
                cmd.Parameters.AddWithValue("Lastname", TextBox2.Text);
                cmd.Parameters.AddWithValue("email", TextBox3.Text);
                cmd.Parameters.AddWithValue("Amount", TextBox4.Text);
                cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                TextBox1.Focus();
                lblmsg.Text = "Successfully submitted. Thank you for donating!!!";

               // Response.Redirect("~/MainPage.aspx");


            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Mainpage.aspx");
        }
    }
}