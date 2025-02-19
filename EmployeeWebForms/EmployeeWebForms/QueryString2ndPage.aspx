<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QueryString2ndPage.aspx.cs" Inherits="EmployeeWebForms.QueryString2ndPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>Query String Example - Page 2</title>
    <div>
            <h2>Welcome to Second Page</h2>
            <asp:Label ID="lblUserName" runat="server" ForeColor="Blue"></asp:Label>
            <br /><br />
            <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="FirstPage.aspx">Go Back</asp:HyperLink>
        </div>
</asp:Content>
