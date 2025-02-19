<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QueryString1stPage.aspx.cs" Inherits="EmployeeWebForms.QueryString1stPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>Query String Example - Page 1</title>
    <div>
            <h2>Enter Your Name</h2>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Go to Second Page" OnClick="btnSubmit_Click" />
        </div>
</asp:Content>
