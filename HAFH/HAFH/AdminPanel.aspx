<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="HAFH.AdminPanel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Admin Panel</h1>
    
    <asp:Panel runat="server" ID="PNLAdmin" Visible="False">

        <asp:Button ID="BTNManageCity" runat="server" Text="Manage Permitted States" OnClick="BTNManageState_Click" CssClass="btn btn-default" />
        <br />
        <br />
        <asp:Button ID="BTNManageState" runat="server" Text="Manage Permitted Cities" OnClick="BTNManageCity_Click" CssClass="btn btn-default" />
        <br />
        <br />
        <asp:Button ID="BTNManageUsers" runat="server" Text="Manage Users" OnClick="BTNManageUsers_Click" CssClass="btn btn-default" />
        <br />
        <br />
        <asp:Button ID="BTNViewPropertySubmissions" runat="server" Text="View New Property Submissions" OnClick="BTNViewPropertySubmissions_Click" CssClass="btn btn-default" />
        <br />
        <br />
        <asp:Button ID="BTNLogout" runat="server" Text="Logout" OnClick="BTNLogout_Click" CssClass="btn btn-default" />

    </asp:Panel>
</asp:Content>