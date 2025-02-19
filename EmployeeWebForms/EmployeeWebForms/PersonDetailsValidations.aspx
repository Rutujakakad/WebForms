<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonDetailsValidations.aspx.cs" Inherits="EmployeeWebForms.PersonDetailsValidations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <title>ASP.NET Web Forms Controls</title>
     <!-- Name Field with RequiredFieldValidator -->
    <asp:Label ID="lblName" runat="server" Text="Enter Name:"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
        ControlToValidate="txtName" 
        ErrorMessage="Name is required!" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <br /><br />

    <!-- Age Field with RangeValidator -->
    <asp:Label ID="lblAge" runat="server" Text="Enter Age:"></asp:Label>
    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="rvAge" runat="server" 
        ControlToValidate="txtAge" 
        MinimumValue="18" MaximumValue="60" 
        Type="Integer" 
        ErrorMessage="Age must be between 18 and 60!" 
        ForeColor="Red">
    </asp:RangeValidator>
    <br /><br />

   

   

    <!-- Password Field -->
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />

            <!-- Confirm Password Field -->
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>

            <!-- Compare Validator for Password Match -->
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match!"
                ForeColor="Red">
            </asp:CompareValidator>
            <br /><br />

            <!-- Email Field -->
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <!-- Regular Expression Validator for Email -->
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"
                ErrorMessage="Invalid email format!"
                ForeColor="Red">
            </asp:RegularExpressionValidator>
            <br /><br />

            <!-- Submit Button -->
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />

            <!-- Label to Display Result -->
            <asp:Label ID="lblResult" runat="server" ForeColor="Green"></asp:Label>

          
        </div>

</asp:Content>
