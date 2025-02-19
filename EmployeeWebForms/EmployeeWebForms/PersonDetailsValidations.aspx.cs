using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class PersonDetailsValidations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtName.Text = "John Doe";  // Default name value
                //ddlCountry.SelectedIndex = 0;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check if the page is valid (i.e., all validators passed)
            if (Page.IsValid)
            {
                lblResult.Text = "Form submitted successfully!";
            }
            else
            {
                lblResult.Text = "Please correct the errors and submit again.";
            }
        }
        
    }
}