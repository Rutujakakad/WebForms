using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class SessionStateEg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page Load - Check if session exists on first load
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    lblSessionData.Text = "Session exists: " + Session["UserName"].ToString();
                }
                else
                {
                    lblSessionData.Text = "No session data found.";
                }
            }
        }

        // Storing Data in Session
        protected void btnSaveSession_Click(object sender, EventArgs e)
        {
            Session["UserName"] = txtUserName.Text;
            lblSessionData.Text = "Session Stored: " + txtUserName.Text;
        }

        // Retrieving Data from Session
        protected void btnRetrieveSession_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                lblSessionData.Text = "Session Data: " + Session["UserName"].ToString();
            }
            else
            {
                lblSessionData.Text = "Session is empty!";
            }
        }

        // Removing Session Data
        protected void btnRemoveSession_Click(object sender, EventArgs e)
        {
            Session.Remove("UserName");  // Remove specific session item
            lblSessionData.Text = "Session data removed!";
        }
    }
}