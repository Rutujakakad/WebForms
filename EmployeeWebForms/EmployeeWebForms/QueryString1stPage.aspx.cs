using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class QueryString1stPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUserName.Text = "John Doe";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get the value from TextBox
            string userName = txtUserName.Text;

            // Redirect to SecondPage.aspx with Query String
            Response.Redirect("QueryString2ndPage.aspx");
        }
    }
}