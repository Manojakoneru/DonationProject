using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationProject
{
    public partial class ChildMasterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

                lb1.Text = "<b><font color=white>" + "Welcome:: " + "</font>" + "<b><font color=white>" + Session["UserName"] + "</font>";

            



        }
    }
}