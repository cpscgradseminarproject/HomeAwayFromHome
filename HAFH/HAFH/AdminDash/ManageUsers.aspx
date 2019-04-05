<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="HAFH.AdminDash.ManageUsers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Users</h1>

<asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="HAFHDB">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="rolename" HeaderText="rolename" SortExpression="rolename" />
        <asp:CheckBoxField DataField="PlatformBan" HeaderText="PlatformBan" SortExpression="PlatformBan" />
    </Columns>
    </asp:GridView>
<asp:sqldatasource runat="server" ID="HAFHDB" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SelectUsers" SelectCommandType="StoredProcedure"></asp:sqldatasource>
</asp:Content>

