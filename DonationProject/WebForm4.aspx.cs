using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DrpYear_SelectedIndexChanged(object sender, EventArgs e)
        {

            string s = DrpMonth.Text + "/" + DrpDate.Text + "/" + DrpYear.Text;
            DateTime dob = Convert.ToDateTime(s);
            DateTime currentdate = Convert.ToDateTime(DateTime.Now);
            TimeSpan time = currentdate.Subtract(dob);
            int total = (time.Days) / 365;
            txtAge.Text = total.ToString();
            if(total>18)
            {
                Response.Redirect("paymentpage.aspx");
            }

        }
    }
}