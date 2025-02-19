<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyUserControl.ascx.cs" Inherits="EmployeeWebForms.MyUserControl" %>

<div>
    <asp:Label ID="lblMessage" runat="server" Text="Hello, this is a User Control!"></asp:Label>
    <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
    <asp:Button ID="btnClick" runat="server" Text="Click Me" OnClick="btnClick_Click" />
</div>


