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
    public partial class WebForm_r : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "<b><font color=white>" + "Welcome:: " + "</font>" + "<b><font color=white>" + Session["UserName"] + "</font>";
        }

        string strConnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void btn_rate_Click(object sender, EventArgs e)

        {


            SqlCommand com, com2, com3, com4, com5;
            SqlConnection con = new SqlConnection(strConnString);
            String username = Session["UserName"].ToString();
            Session["game"] = ddl1.SelectedItem.Text;
            com = new SqlCommand();
            com.Connection = con;
            com.CommandType = CommandType.Text;
            com.CommandText = "Insert into rating values(@username,@game1,@rate1)";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@username", username);
            com.Parameters.AddWithValue("@game1", ddl1.SelectedItem.Text); //Session['game'];
            com.Parameters.AddWithValue("@rate1", RadioButtonList1.SelectedValue);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            com.ExecuteNonQuery();

            con.Close();

            lblmsg.Text = "Successfully Rated!!!";

        }



    }

}
