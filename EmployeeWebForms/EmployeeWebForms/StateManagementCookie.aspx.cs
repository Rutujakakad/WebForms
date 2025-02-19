using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class StateManagementCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "Click a button to create, retrieve, or delete cookies.";
        }

        protected void btnCreateCookie_Click(object sender, EventArgs e)
        {
            HttpCookie userCookie = new HttpCookie("UserInfo");
            userCookie["UserName"] = "JohnDoe"; // Store user info
            userCookie.Expires = DateTime.Now.AddDays(7); // Set expiration date
            Response.Cookies.Add(userCookie); // Add cookie to response

            lblMessage.Text = "Cookie Created! Username: JohnDoe";
        }

        protected void btnRetrieveCookie_Click(object sender, EventArgs e)
        {
            HttpCookie userCookie = Request.Cookies["UserInfo"]; //this will  Retrieve cookie

            if (userCookie != null)
            {
                string userName = userCookie["UserName"];
                lblMessage.Text = "Retrieved Cookie: " + userName;
            }
            else
            {
                lblMessage.Text = "No cookie found!";
            }
        }

        protected void btnDeleteCookie_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(-1); // Expire the cookie
                lblMessage.Text = "Cookie Deleted!";
            }
            else
            {
                lblMessage.Text = "No cookie to delete!";
            }
        }
    }
}