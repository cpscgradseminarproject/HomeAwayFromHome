<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="HAFH.AdminDash.ManageUsers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Users</h1>

<asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="HAFHDB" CellPadding="4" ForeColor="#333333" GridLines="None" Width="795px" ID="GVManageUsers" AllowPaging="True" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
        <asp:TemplateField HeaderText="RoleId" SortExpression="RoleId">
            <EditItemTemplate>
                <asp:DropDownList ID="DDLUserRoleSelect" runat="server" DataSourceID="UserRoleData" DataTextField="Name" DataValueField="Id" SelectedValue='<%# Bind("RoleId") %>'>
                </asp:DropDownList>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("RoleId") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
        <asp:TemplateField></asp:TemplateField>
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
<asp:sqldatasource runat="server" ID="HAFHDB" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserId], [RoleId], [UserName] FROM [AspNetUserRoles]" UpdateCommand="UPDATE AspNetUserRoles SET RoleId = @RoleId WHERE (UserId = @UserId)" DeleteCommand="DELETE FROM [AspNetUserRoles] WHERE [UserId] = @UserId AND [RoleId] = @RoleId" InsertCommand="INSERT INTO [AspNetUserRoles] ([UserId], [RoleId], [UserName]) VALUES (@UserId, @RoleId, @UserName)">
    <DeleteParameters>
        <asp:Parameter Name="UserId" Type="String" />
        <asp:Parameter Name="RoleId" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserId" Type="String" />
        <asp:Parameter Name="RoleId" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="RoleId" Type="String" />
        <asp:Parameter Name="UserId" Type="String" />
    </UpdateParameters>
    </asp:sqldatasource>
    <asp:SqlDataSource ID="UserRoleData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Name] FROM [AspNetRoles]"></asp:SqlDataSource>
</asp:Content>

