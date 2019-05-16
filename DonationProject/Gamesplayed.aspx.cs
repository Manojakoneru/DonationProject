using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationProject
{
    public partial class Gamesplayed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "<b><font color=white>" + Session["UserName"] + "</font>";

        }
     
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            SqlParameter param = new SqlParameter("@UID", Session["UserName"].ToString());
            e.Command.Parameters.Add(param);

        }
    }
}