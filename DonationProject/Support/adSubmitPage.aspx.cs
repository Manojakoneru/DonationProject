using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Windows.Forms;


namespace DonationProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //Get Filename from fileupload control
            //string filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
            //Save images into Images folder
           // fileuploadimages.SaveAs(Server.MapPath("Images/" + filename));
            //Getting dbconnection from web.config connectionstring
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            //Open the database connection
            con.Open();
            //Query to insert images path and name into database
            SqlCommand cmd = new SqlCommand("Insert into adDetails(Username,Email,URL) values(@Username,@Email,@URL)", con);
            //Passing parameters to query
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@URL", TextBox5.Text);
      //      cmd.Parameters.AddWithValue("@ImageName", filename);
         //   cmd.Parameters.AddWithValue("@ImagePath", "Images/" + filename);
            cmd.ExecuteNonQuery();
            //Close dbconnection
            con.Close();
            lblmsg.Text = "Successfully submitted . Admin will contact you soon";
         //   Response.Redirect("~/MainPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("MainPage.aspx");
        }
    }
}