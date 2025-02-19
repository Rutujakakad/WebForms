using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class HiddenFeildsEg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hidValue.Value = "This is a hidden message!";
        }

        // Retrieve HiddenField Value on Button Click
        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            string hiddenValue = hidValue.Value;
            lblMessage.Text = "Hidden Field Value: " + hiddenValue;
        }
    }
}