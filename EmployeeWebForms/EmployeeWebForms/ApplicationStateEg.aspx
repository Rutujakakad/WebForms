<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplicationStateEg.aspx.cs" Inherits="EmployeeWebForms.ApplicationStateEg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>Application State Example</title>
     <div>
            <!-- Display Total Users -->
            <asp:Label ID="lblTotalUsers" runat="server" Text="Total Users: " Font-Bold="true"></asp:Label>
            <br /><br />

            <asp:Button ID="btnIncreaseUsers" runat="server" Text="Increase User Count" OnClick="btnIncreaseUsers_Click" />
            <asp:Button ID="btnShowUsers" runat="server" Text="Show Total Users" OnClick="btnShowUsers_Click" />
        </div>
</asp:Content>
