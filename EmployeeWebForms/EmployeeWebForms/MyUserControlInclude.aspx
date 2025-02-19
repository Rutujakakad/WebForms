<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyUserControlInclude.aspx.cs" Inherits="EmployeeWebForms.MyUserControlInclude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%@ Register Src="~/MyUserControl.ascx" TagPrefix="uc" TagName="MyUserControl" %>
<html>
<body>
    
        <uc:MyUserControl ID="uc1" runat="server" />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server" />

    
</body>

</asp:Content>
