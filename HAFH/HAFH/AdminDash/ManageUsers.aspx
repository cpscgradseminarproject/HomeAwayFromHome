<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="HAFH.AdminDash.ManageUsers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Users</h1>

<asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="HAFHDB" CellPadding="4" ForeColor="#333333" GridLines="None" Width="795px" ID="GVManageUsers">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
        <asp:TemplateField HeaderText="RoleName" SortExpression="RoleName">
            <EditItemTemplate>
                <asp:DropDownList ID="DDLRoleSelect" runat="server" DataSourceID="RoleData" DataTextField="Name" DataValueField="Name" SelectedValue='<%# Bind("RoleName") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="RoleData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name] FROM [AspNetRoles]"></asp:SqlDataSource>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("RoleName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField ConvertEmptyStringToNull="False" DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
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
<asp:sqldatasource runat="server" ID="HAFHDB" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="AdminSelectUsers" SelectCommandType="StoredProcedure" UpdateCommand="AdminEditUsers" UpdateCommandType="StoredProcedure">
    <UpdateParameters>
        <asp:ControlParameter ControlID="GVManageUsers" Name="SelectedUser" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GVManageUsers" Name="EditValue" PropertyName="SelectedValue" Type="String" />
    </UpdateParameters>
    </asp:sqldatasource>
</asp:Content>

