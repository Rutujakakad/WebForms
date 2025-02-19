<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StateManagementCookie.aspx.cs" Inherits="EmployeeWebForms.StateManagementCookie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <title>ASP.NET Cookies Demo</title>


    
        <div>
            <h2>Cookies Example in ASP.NET</h2>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
            <br /><br />

            <!-- Button to Create Cookie -->
            <asp:Button ID="btnCreateCookie" runat="server" Text="Create Cookie" OnClick="btnCreateCookie_Click" />
            <br /><br />

            <!-- Button to Retrieve Cookie -->
            <asp:Button ID="btnRetrieveCookie" runat="server" Text="Retrieve Cookie" OnClick="btnRetrieveCookie_Click" />
            <br /><br />

            <!-- Button to Delete Cookie -->
            <asp:Button ID="btnDeleteCookie" runat="server" Text="Delete Cookie" OnClick="btnDeleteCookie_Click" />
        </div>
    
</asp:Content>
