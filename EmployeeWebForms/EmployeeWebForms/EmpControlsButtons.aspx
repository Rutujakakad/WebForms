<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmpControlsButtons.aspx.cs" Inherits="EmployeeWebForms.EmpControlsButtons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   



    <title>ASP.NET Web Forms Controls</title>

   
        <div>
            <!-- TextBox Control -->
            <asp:Label ID="lblName" runat="server" Text="Enter Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br /><br />

            <!-- CheckBox Control -->
            <asp:CheckBox ID="chkAgree" runat="server" Text="I agree to terms" />
            <br /><br />

            <!-- RadioButton Control -->
            <asp:RadioButton ID="rdoMale" runat="server" GroupName="Gender" Text="Male" />
            <asp:RadioButton ID="rdoFemale" runat="server" GroupName="Gender" Text="Female" />
            <br /><br />

            <!-- DropDownList Control -->
            <asp:Label ID="lblCountry" runat="server" Text="Select Country:"></asp:Label>
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Text="India" Value="IN"></asp:ListItem>
                <asp:ListItem Text="USA" Value="US"></asp:ListItem>
                <asp:ListItem Text="UK" Value="UK"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <!-- FileUpload Control -->
            <asp:FileUpload ID="fileUploader" runat="server" />
            <br /><br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /> 
        </div>
   




</asp:Content>
