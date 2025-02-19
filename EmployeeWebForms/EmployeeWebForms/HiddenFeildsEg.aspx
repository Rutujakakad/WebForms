<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HiddenFeildsEg.aspx.cs" Inherits="EmployeeWebForms.HiddenFeildsEg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <h2>Hidden Field Example in ASP.NET</h2>

            <!-- Hidden Field to Store Data -->
            <asp:HiddenField ID="hidValue" runat="server" Value="Initial Hidden Data" />
            
            <!-- Button to Retrieve Data from Hidden Field -->
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve Hidden Value" OnClick="btnRetrieve_Click" />
            <br /><br />

            <!-- Label to Display Retrieved Data -->
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
</asp:Content>
