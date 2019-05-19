using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationProject
{
    public partial class Gamesplayed : System.Web.UI.Page
    {
        string strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "<b><font color=white>" + Session["UserName"] + "</font>";

            String childInfo="",childName="";
            System.Data.SqlClient.SqlCommand com1,com2;
            SqlConnection con1 = new SqlConnection(strConnString);
            com1 = new SqlCommand();
            com1.Connection = con1;
            com1.CommandType = CommandType.Text;
            com1.CommandText = "select childEmail from ParentTable where username=@username";
            com1.Parameters.AddWithValue("@username", Session["UserName"]);
            if (con1.State == ConnectionState.Closed)
            {
                con1.Open();
                SqlDataReader objReader = com1.ExecuteReader();
                while (objReader.Read())
                {
                    childInfo= objReader.GetString(objReader.GetOrdinal("childEmail"));
                }
            }
            // com1.ExecuteNonQuery();
            con1.Close();
            //get child name using email
            if(childInfo!="")
            {
                Debug.WriteLine("*************"+ childInfo);
                SqlConnection con2 = new SqlConnection(strConnString);
                com2 = new SqlCommand();
                com2.Connection = con2;
                com2.CommandType = CommandType.Text;
                com2.CommandText = "select userName from childTable where email=@email";
                com2.Parameters.AddWithValue("@email", childInfo.Trim());
                if (con2.State == ConnectionState.Closed)
                {
                    con2.Open();
                    SqlDataReader objReader = com2.ExecuteReader();
                    while (objReader.Read())
                    {
                        Debug.WriteLine("$$$$$$$$$$$$$$$$$$$$$");
                        childName = objReader.GetString(objReader.GetOrdinal("userName"));
                        Session["childName"] = childName.ToUpper();
                    }
                }
                Debug.WriteLine("*************" + childName);
                // com1.ExecuteNonQuery();
                Label2.Text = "<b><font color=green>" + Session["childName"] + "</font>";
                con2.Close();
            }

        }
     
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            SqlParameter param = new SqlParameter("@UID", Session["UserName"].ToString());
            e.Command.Parameters.Add(param);

        }
    }
}