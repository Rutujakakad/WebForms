using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class ApplicationStateEg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialize application state on first request
            if (Application["TotalUsers"] == null)
            {
                Application["TotalUsers"] = 0;
            }
        }

        // Increase Total Users in a Thread-Safe Manner
        protected void btnIncreaseUsers_Click(object sender, EventArgs e)
        {
            Application.Lock(); // Prevent race conditions
            Application["TotalUsers"] = (int)Application["TotalUsers"] + 1;
            Application.UnLock(); // Release lock
            lblTotalUsers.Text = "User count increased!";
        }

        // Retrieve and Display Total Users
        protected void btnShowUsers_Click(object sender, EventArgs e)
        {
            lblTotalUsers.Text = "Total Users: " + Application["TotalUsers"].ToString();
        }
    }
}