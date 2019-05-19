using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationProject.Games.Game1
{
    public partial class _2048 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            int exis_HighScore = 0;
            string exis_winnner = "";
            Boolean newScrFlag = false, userExists = false ;
            System.Data.SqlClient.SqlCommand com1;
            SqlConnection con1 = new SqlConnection(strConnString);
            com1 = new SqlCommand();
            com1.Connection = con1;
            com1.CommandType = CommandType.Text;
            com1.CommandText = "select username,game,highscore from scoreboard where game =@game and username=@username";
            com1.Parameters.AddWithValue("@game", "2048Tile");
            com1.Parameters.AddWithValue("@username", Session["userName"]);
            if (con1.State == ConnectionState.Closed)
            {
                con1.Open();
                SqlDataReader objReader = com1.ExecuteReader();
                while (objReader.Read() && !newScrFlag)
                {
                    exis_HighScore = objReader.GetInt32(objReader.GetOrdinal("highscore"));
                    exis_winnner = objReader.GetString(objReader.GetOrdinal("username"));
                    if (exis_HighScore < Convert.ToInt32(score.Text))
                    {
                        newScrFlag = true;
                    }else if (exis_winnner.Equals(Session["userName"]))
                    {
                        userExists = true;
                    }
                    //Console.SetOut("****************");
                    Debug.WriteLine("*********************");
                }
            }
            // com1.ExecuteNonQuery();
            con1.Close();
            //new high score for the current user needs to be updated

            if (newScrFlag)
            {
                    //existing data has already a winner don't dont insert and skip;
                    // Console.SetOut("Entry updated");
                 Debug.WriteLine("Entry updated");
                 SqlCommand com;
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "update scoreboard set highscore='" + Convert.ToInt32(score.Text) + "' where  username='" +Session["userName"]+ "' AND game='2048Tile'" ;
                com.Parameters.Clear();
                  
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                com.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Game Over!!";
                Session["message"] = Label1.Text;
                Response.Redirect("../../success.aspx");
            }
            else if(!userExists && !newScrFlag)
            {
                    // Console.SetOut("Entry Inserted");
                    Debug.WriteLine("Entry Inserted");
                    // Response.Write("Game completed");
                    SqlCommand com;
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "Insert into scoreboard values(@username,@game,@highscore,@Id)";
                com.Parameters.Clear();
                Random r = new Random();
                com.Parameters.AddWithValue("@username", Session["userName"]);
                com.Parameters.AddWithValue("@game", "2048Tile");
                com.Parameters.AddWithValue("@highscore", Convert.ToInt32(score.Text));
                com.Parameters.AddWithValue("@Id", r.Next() % 1000);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                com.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Congratulations!!!!<br/>You got a high score";
                Session["message"] = Label1.Text;
                Response.Redirect("../../success.aspx");
                //clear();
            }
            else
            {
                Label1.Text = "Game Over!!";
                Session["message"] = Label1.Text;
                Response.Redirect("../../success.aspx");
            }
        }
    }
}