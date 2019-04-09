<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCities.aspx.cs" Inherits="HAFH.AdminDash.ManageCities" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Cities</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CityName" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CityName" HeaderText="CityName" ReadOnly="True" SortExpression="CityName" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [City] WHERE [CityName] = @CityName" InsertCommand="INSERT INTO [City] ([CityName], [State]) VALUES (@CityName, @State)" SelectCommand="SELECT [CityName], [State] FROM [City]" UpdateCommand="UPDATE [City] SET [State] = @State WHERE [CityName] = @CityName">
        <DeleteParameters>
            <asp:Parameter Name="CityName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CityName" Type="String" />
            <asp:Parameter Name="State" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="CityName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:Label ID="LBLAddCity" runat="server" Text="Add a New State:"></asp:Label>
    <asp:TextBox ID="TXTAddCity" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="LBLStates" runat="server" Text="State:"></asp:Label>
    <asp:DropDownList ID="DDLStates" runat="server" DataSourceID="StatesDB" DataTextField="StateName" DataValueField="StateName"></asp:DropDownList>

    <asp:SqlDataSource ID="StatesDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [StateName] FROM [States]"></asp:SqlDataSource>

    <br />
    <asp:Button ID="BTNAddCity" runat="server" Text="Add" OnClick="BTNAddCity_Click" />
</asp:Content>