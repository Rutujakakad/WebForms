using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForms
{
    public partial class EmpControlsButtons : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearFields();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Capture user inputs
            string name = txtName.Text;
            bool isAgreed = chkAgree.Checked;
            string gender = rdoMale.Checked ? "Male" : (rdoFemale.Checked ? "Female" : "Not Selected");
            string country = ddlCountry.SelectedItem.Text;

            // Handle file upload
            string uploadedFileName = string.Empty;
            if (fileUploader.HasFile)
            {
                uploadedFileName = fileUploader.FileName;
                fileUploader.SaveAs(Server.MapPath("~/Uploads/") + uploadedFileName);
            }

            // Store data or display confirmation
            string message = $"Name: {name}<br/>"
                           + $"Agreed to terms: {isAgreed}<br/>"
                           + $"Gender: {gender}<br/>"
                           + $"Country: {country}<br/>"
                           + $"Uploaded File: {(string.IsNullOrEmpty(uploadedFileName) ? "No file uploaded" : uploadedFileName)}";

            // Display result on the page
            DisplayMessage(message);
            ClearFields();
        }

        private void DisplayMessage(string message)
        {
            // Dynamically create a Label to display the message
            Label lblResult = new Label
            {
                Text = message,
                ForeColor = System.Drawing.Color.Green
            };

            // Add label to the page dynamically
            this.Controls.Add(lblResult);
        }

        private void ClearFields()
        {
            // Clear input fields after submission
            txtName.Text = string.Empty;
            chkAgree.Checked = false;
            rdoMale.Checked = false;
            rdoFemale.Checked = false;
            ddlCountry.SelectedIndex = 0; // Reset dropdown to first item
        }

    }
}