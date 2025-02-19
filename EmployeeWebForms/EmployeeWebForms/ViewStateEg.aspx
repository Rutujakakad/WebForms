<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStateEg.aspx.cs" Inherits="EmployeeWebForms.ViewStateEg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <h2>ViewState Example in ASP.NET</h2>

            <asp:Label ID="lblEnterName" runat="server" Text="Enter Name: "></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br /><br />

            <!-- Button to Store Data in ViewState -->
            <asp:Button ID="btnStore" runat="server" Text="Store in ViewState" OnClick="btnStore_Click" />
            <br /><br />

            <!-- Button to Retrieve Data from ViewState -->
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve from ViewState" OnClick="btnRetrieve_Click" />
            <br /><br />

            <!-- Label to Display Retrieved Data -->
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
</asp:Content>
