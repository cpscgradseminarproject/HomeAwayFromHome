<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePayments.aspx.cs" Inherits="HAFH.PaymentManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="font-size: medium">Manage Payment Methods</h2>
    <asp:GridView ID="PaymentGvw" runat="server" AutoGenerateColumns="False" DataKeyNames="PaymentID" DataSourceID="DBManagePayments">
        <Columns>
            <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="NameOnCard" HeaderText="NameOnCard" SortExpression="NameOnCard" />
            <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" SortExpression="CardType" />
            <asp:BoundField DataField="SecurityCode" HeaderText="SecurityCode" SortExpression="SecurityCode" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DBManagePayments" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [PaymentOptions] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:Parameter Name="UserID" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>

    <br />
    <br />
    <asp:Label ID="LBLNameOnCard" runat="server" Text="Name On Card:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTNameOnCard" runat="server" Width="300px"></asp:TextBox>
    <br />
    <asp:Label ID="LBLCardNumber" runat="server" Text="Card Number:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTCardNumber" runat="server" Width="300px"></asp:TextBox>
    <br />
    <asp:Label ID="LBLExpDate" runat="server" Text="Expiration Date:" Width="150px"></asp:Label>
    <asp:Calendar ID="CALExp" runat="server"></asp:Calendar>
    <br />
    <asp:Label ID="LBLSecurityCode" runat="server" Text="Security Code:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTSecurityCode" runat="server" Width="300px"></asp:TextBox>
    <br />
    <asp:Label ID="LBLCardType" runat="server" Text="Card Type:" Width="150px"></asp:Label>
    <asp:DropDownList ID="DDLCardType" runat="server" DataSourceID="DBNewCard" DataTextField="TypeName" DataValueField="TypeName"></asp:DropDownList>
    <br />
    <asp:Button runat="server" ID="BTNAddCard" Text="Add New Card" OnClick="BTNAddCard_Click" />

    <asp:SqlDataSource ID="DBNewCard" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TypeName] FROM [CardType]"></asp:SqlDataSource>

    <asp:Label ID="LBLCurrentUser" runat="server" Visible="False"></asp:Label>
</asp:Content>
