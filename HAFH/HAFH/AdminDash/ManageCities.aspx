<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCities.aspx.cs" Inherits="HAFH.AdminDash.ManageCities" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Cities</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CityName" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CityName" HeaderText="CityName" ReadOnly="True" SortExpression="CityName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [City] WHERE [CityName] = @CityName" InsertCommand="INSERT INTO [City] ([CityName]) VALUES (@CityName)" SelectCommand="SELECT [CityName] FROM [City]">
        <DeleteParameters>
            <asp:Parameter Name="CityName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CityName" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>