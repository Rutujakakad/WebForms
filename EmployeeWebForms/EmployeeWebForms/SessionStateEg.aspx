<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SessionStateEg.aspx.cs" Inherits="EmployeeWebForms.SessionStateEg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>Session State Example</title>
    <div>
            <!-- Input for Username -->
            <asp:Label ID="lblUserName" runat="server" Text="Enter Username:"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <br /><br />

            <!-- Buttons for Session Operations -->
            <asp:Button ID="btnSaveSession" runat="server" Text="Save to Session" OnClick="btnSaveSession_Click" />
            <asp:Button ID="btnRetrieveSession" runat="server" Text="Retrieve from Session" OnClick="btnRetrieveSession_Click" />
            <asp:Button ID="btnRemoveSession" runat="server" Text="Remove Session Data" OnClick="btnRemoveSession_Click" />
            <br /><br />

            <!-- Label to Display Session Data -->
            <asp:Label ID="lblSessionData" runat="server" ForeColor="Blue"></asp:Label>
        </div>
</asp:Content>
