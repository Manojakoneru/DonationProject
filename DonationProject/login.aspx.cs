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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string strConnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        string str, str2, UserName, Password, u, p;
        string status;

        SqlCommand com, com2;

        SqlDataAdapter sqlda, sqlda2;

        DataTable dt, dt2;

        int RowCount, rc2; 

        protected void btn_login_Click(object sender, EventArgs e)

        {
            SqlConnection con = new SqlConnection(strConnString);
            SqlConnection con1 = new SqlConnection(strConnString);
            con.Open();
            con1.Open();
            str = "Select * from childTable";
            str2 = "Select * from ParentTable";

            com = new SqlCommand(str);
            com2 = new SqlCommand(str2);

            sqlda = new SqlDataAdapter(com.CommandText, con);
            sqlda2 = new SqlDataAdapter(com2.CommandText, con1);


            dt = new DataTable();
            dt2 = new DataTable();

            sqlda.Fill(dt);
            sqlda2.Fill(dt2);

            RowCount = dt.Rows.Count;
            rc2 = dt2.Rows.Count;
          
            for (int i = 0; i < RowCount; i++)

            {

                UserName = dt.Rows[i]["userName"].ToString();

                Password = dt.Rows[i]["password"].ToString();
                status =(dt.Rows[i]["status"]).ToString();
                string s = "True";
                Console.WriteLine(s);
                Console.WriteLine("hiii",status);

                if (UserName.Equals(TextBox_user_name.Text) && Password.Equals(TextBox_password.Text))

                {
                if(status.Equals(s))
                    {
                    Session["userName"] = UserName;

                    Response.Redirect("ChildMasterPage.aspx");
                    }
                 else

                        lb1.Text = "Sorry, your account is not verified at";
                }

            }

            for (int j = 0; j < rc2; j++)

            {

                u = dt2.Rows[j]["userName"].ToString();

                p = dt2.Rows[j]["password"].ToString();

                if (u == TextBox_user_name.Text && p == TextBox_password.Text)

                {

                    Session["userName"] = u;

                    Response.Redirect("ParentMasterPage.aspx");
                }
             else if (TextBox_user_name.Text == "Admin")
                {
                    Session["Admin"] = UserName;
                    Response.Redirect("WebForm5.aspx");
                }
                else if (lb1.Text != "Sorry, your account is not verified at")

                {

                    Lb3.Text = "Invalid User Name or Password! Please try again!";

                }
            }

            con.Close();
            con1.Close();


        }





        }
}