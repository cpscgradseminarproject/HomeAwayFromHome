<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="HAFH.AdminDash.ManageUsers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Users</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="UserDB" Width="1150px">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowEditButton="True">
            <ControlStyle CssClass="btn btn-default" />
            <ItemStyle Width="75px" />
            </asp:CommandField>
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
            <asp:TemplateField HeaderText="RoleId" SortExpression="RoleId">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("RoleId") %>' CssClass="form-control">
                        <asp:ListItem Value="0001">Customer</asp:ListItem>
                        <asp:ListItem Value="0002">Property Manager</asp:ListItem>
                        <asp:ListItem Value="0003">Admin</asp:ListItem>
                        <asp:ListItem Value="0004">SiteOwner</asp:ListItem>
                        <asp:ListItem Value="0005">Banned</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("RoleId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" ReadOnly="True" SortExpression="RoleName">
            <ItemStyle Width="200px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="UserDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUserRoles.UserId, AspNetUserRoles.UserName, AspNetUserRoles.RoleId, AspNetRoles.Name AS RoleName FROM AspNetUserRoles INNER JOIN AspNetRoles ON AspNetRoles.Id = AspNetUserRoles.RoleId
" UpdateCommand="Update AspNetUserRoles set RoleId = @RoleId
where UserId = @UserId">
        <UpdateParameters>
            <asp:Parameter Name="RoleId" />
            <asp:Parameter Name="UserId" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

