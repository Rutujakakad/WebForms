using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    //View State:ViewState is used to maintain the state of controls and variables across postbacks. It stores data in a hidden field on the page.


    public partial class ViewStateEg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "Enter a name and click 'Store in ViewState'.";
            }
        }

        //btnStore_Click method → Stores the username in ViewState.
       // btnRetrieve_Click method → Retrieves the username from ViewState.
        // Store Data in ViewState
        protected void btnStore_Click(object sender, EventArgs e)
        {
            ViewState["UserName"] = txtName.Text; // Save user input in ViewState
            lblMessage.Text = "Data stored in ViewState.";
        }

        // Retrieve Data from ViewState
        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            if (ViewState["UserName"] != null)
            {
                string userName = ViewState["UserName"].ToString();
                lblMessage.Text = "Retrieved from ViewState: " + userName;
            }
            else
            {
                lblMessage.Text = "No data found in ViewState.";
            }
        }
    }
}