using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class HttpContextExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "Click a button to store or retrieve data.";
            }
        }

        // Store Data in HttpContext.Items
        protected void btnStore_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Items["Message"] = "Hello, User!";
            lblMessage.Text = "Data stored in HttpContext.Items for this request.";
        }

        // Retrieve Data from HttpContext.Items
        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Items["Message"] != null)
            {
                string message = HttpContext.Current.Items["Message"].ToString();
                lblMessage.Text = "Retrievd Message: " + message;
            }
            else
            {
                lblMessage.Text = "No data found in HttpContext.Items(request hs ended.)";
            }
        }

    }
}