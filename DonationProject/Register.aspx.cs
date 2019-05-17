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

using System.Net.Mail;

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


                com.CommandText = "Insert into childTable values(@username,@Password,@Email,@role,@dateOfbirth,@status,@schoolemail)";

                com.Parameters.Clear();

                com.Parameters.AddWithValue("@Username", txt_UserName.Text);
                com.Parameters.AddWithValue("@Password", txt_Password.Text);
                com.Parameters.AddWithValue("@Email", email.Text);
                com.Parameters.AddWithValue("@role", RadioButtonList1.SelectedValue);
                com.Parameters.AddWithValue("@dateOfbirth", txtDtOfBirth.Text);
                com.Parameters.AddWithValue("@schoolemail", matternumb.Text);
                
                // Code for sending email to School Email ID if age is < than 18 
                if (Int32.Parse(txtAge.Text)< 18)
                {
                    MailMessage mail = new MailMessage();
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    mail.From = new MailAddress("toptechonlinegames@gmail.com");
                    mail.To.Add(matternumb.Text);
                    mail.Subject = "Age Verification Required";
                    mail.IsBodyHtml = true;
                    mail.Body = "Greetings," +" <br /> <br />" +"This email is from TopTech Gaming Website. One of your student has registered to our website. " +
                        "For allowing access to play games on our website, we require you to verify the age of your student. Please reply back to us with the" +
                        "age of the student. Here are the details of the student registered for our website:" +"<br />"+ "Name of the student: " +txt_UserName.Text+
                        "<br />"+ "Student DOB: " +txtDtOfBirth.Text+ "<br />"+ "Thanks in advance for verfiication" +"<br />" +"<br />"+ "Thanks, "+"<br />"+"TopTech Games" ;
                    client.Port = 587;                   
                    client.Credentials = new System.Net.NetworkCredential("toptechonlinegames@gmail.com", "MyGames@12345");
                    client.EnableSsl = true;                    
                    client.Send(mail);
                   
          
                }
    
                com.Parameters.AddWithValue("@status", 0);

                Console.WriteLine("from child");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                com.ExecuteNonQuery();
                con.Close();
                if (txtAge.Text !=" 18")
                {
                    Response.Redirect("paymentpage.aspx");
                }

                //else

                lblmsg.Text = "Successfully Registered!!! Admin will verify your age soon";

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
