using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class QueryString2ndPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if Query String contains "UserName"
            if (Request.QueryString["UserName"] != null)
            {
                // Retrieve the value from Query String
                string userName = Request.QueryString["UserName"];

                // Display the value in Label
                lblUserName.Text = "Hello, " + userName + "!";
            }
            else
            {
                lblUserName.Text = "No username provided!";
            }
        }
    }
}