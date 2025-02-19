using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class MyUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "You entered: " + txtInput.Text;

        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Button Clicked! You entered: " + txtInput.Text;
        }
    }
}