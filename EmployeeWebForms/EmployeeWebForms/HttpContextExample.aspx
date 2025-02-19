<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HttpContextExample.aspx.cs" Inherits="EmployeeWebForms.HttpContextExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <title>HttpContext Example</title>
       <div>
            <h2>HttpContext Example in ASP.NET</h2>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
            <br /><br />

            <!-- Button to Store Data in HttpContext -->
            <asp:Button ID="btnStore" runat="server" Text="Store Data in HttpContext" OnClick="btnStore_Click" />
            <br /><br />

            <!-- Button to Retrieve Data from HttpContext -->
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve Data from HttpContext" OnClick="btnRetrieve_Click" />
        </div>
</asp:Content>
