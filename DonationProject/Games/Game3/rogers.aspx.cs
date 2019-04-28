using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationProject.Games.Game3
{
    public partial class rogers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("Game completed");
            int exis_HighScore=0;
            string exis_winnner = "";
            System.Data.SqlClient.SqlCommand com1;
            SqlConnection con1 = new SqlConnection(strConnString);
            com1 = new SqlCommand();
            com1.Connection = con1;
            com1.CommandType = CommandType.Text;
            com1.CommandText = "select game,highscore from scoreboard where game =@game";
            com1.Parameters.AddWithValue("@game", "rogers");
            if (con1.State == ConnectionState.Closed)
            {
                con1.Open();
                SqlDataReader objReader = com1.ExecuteReader();
                while (objReader.Read())
                {
                   exis_HighScore=objReader.GetInt32(objReader.GetOrdinal("highscore"));
                    if (exis_HighScore > 0)
                        break;
                }
            }
           // com1.ExecuteNonQuery();
             con1.Close();
            if (exis_HighScore > 0 && exis_HighScore>=Convert.ToInt32(g3_highscore.Text))
            {
                //existing data has already a winner don't dont insert and skip;
                // Console.SetOut("Entry not inserted");
                Label1.Text = "Game Over!!";
                Session["message"] = Label1.Text;
                Response.Redirect("../../success.aspx");  
            }
            else
            {
               // Console.SetOut("New High score is recorded for Rogers");
                System.Data.SqlClient.SqlCommand com;
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "Insert into scoreboard values(@username,@game,@highscore,@Id)";
                com.Parameters.Clear();
                Random r = new Random();
                com.Parameters.AddWithValue("@username", Session["userName"]);
                com.Parameters.AddWithValue("@game", "rogers");
                com.Parameters.AddWithValue("@highscore", Convert.ToInt32(g3_highscore.Text));
                com.Parameters.AddWithValue("@Id", r.Next() % 1000);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                com.ExecuteNonQuery();
                con.Close();
             }
            Label1.Text = "Congratulations!!!!<br/>You got a high score";
            Session["message"] = Label1.Text;
            Response.Redirect("../../success.aspx");
        }
    }
}