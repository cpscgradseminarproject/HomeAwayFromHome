<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="HAFH.AdminPanel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Admin Panel</h1>
    
    <asp:Panel runat="server" ID="PNLAdmin" Visible="False">

        <asp:Button ID="BTNManageCity" runat="server" Text="Manage Permitted States" />
        <br />
        <br />
        <asp:Button ID="BTNManageState" runat="server" Text="Manage Permitted Cities" />
        <br />
        <br />
        <asp:Button ID="BTNManageUsers" runat="server" Text="Manage Users" />
        <br />
        <br />
        <asp:Button ID="BTNViewPropertySubmissions" runat="server" Text="View New Property Submissions" />

    </asp:Panel>
</asp:Content>