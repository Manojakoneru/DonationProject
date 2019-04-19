using System;

using System.Collections;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;
namespace DonationProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      

        string strConnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

      protected void btn_register_Click(object sender, EventArgs e)

        {
            if (RadioButtonList1.SelectedValue == "1")
            {
                
                SqlCommand com;
                SqlConnection con = new SqlConnection(strConnString);

                com = new SqlCommand();

                com.Connection = con;

                com.CommandType = CommandType.Text;


                com.CommandText = "Insert into childTable values(@username,@Password,@Email,@role,@dateOfbirth,@status)";

                com.Parameters.Clear();

                com.Parameters.AddWithValue("@Username", txt_UserName.Text);
                com.Parameters.AddWithValue("@Password", txt_Password.Text);
                com.Parameters.AddWithValue("@Email", email.Text);
                com.Parameters.AddWithValue("@role", RadioButtonList1.SelectedValue);
                com.Parameters.AddWithValue("@dateOfbirth", txtDtOfBirth.Text);
                com.Parameters.AddWithValue("@status", 0);

                Console.WriteLine("from child");
                if (con.State == ConnectionState.Closed)

                    con.Open();

                com.ExecuteNonQuery();
                con.Close();
                //if (txtAge.Text !=" 18")
                //{
                //    Response.Redirect("paymentpage.aspx");
                //}

                //else
                  
                lblmsg.Text = "Successfully Registered!!!";

                clear();

            }

            else
            {
                SqlCommand com;
                SqlConnection con = new SqlConnection(strConnString);

                com = new SqlCommand();

                com.Connection = con;

                com.CommandType = CommandType.Text;

                com.CommandText = "Insert into parentTable values(@userName,@password,@email,@role,@childEmail)";

                com.Parameters.Clear();

                com.Parameters.AddWithValue("@userName", txt_UserName.Text);
                com.Parameters.AddWithValue("@password", txt_Password.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@role", RadioButtonList1.SelectedValue);
                com.Parameters.AddWithValue("@childEmail",TextBox4.Text);

                Console.WriteLine("from parent");
                if (con.State == ConnectionState.Closed)

                    con.Open();

                com.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Successfully Registered!!!";
                clear();

            }

        }
        private void clear()

            {

                txt_UserName.Text = "";
            email.Text = "";
            TextBox4.Text = "";
            matternumb.Text = "";
            txtAge.Text = "";
            txtDtOfBirth.Text = "";

            RadioButtonList1.ClearSelection();

            }



    }

    }
