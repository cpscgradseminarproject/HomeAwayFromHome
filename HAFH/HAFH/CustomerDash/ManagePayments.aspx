﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePayments.aspx.cs" Inherits="HAFH.PaymentManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Manage Payment Methods</h1>
    <asp:GridView ID="PaymentGvw" runat="server" AutoGenerateColumns="False" DataKeyNames="PaymentID" DataSourceID="DBManagePayments" Width="925px">
        <Columns>
            <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" Visible="False" />
            <asp:BoundField DataField="NameOnCard" HeaderText="NameOnCard" SortExpression="NameOnCard" />
            <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" SortExpression="CardType" />
            <asp:BoundField DataField="SecurityCode" HeaderText="SecurityCode" SortExpression="SecurityCode" />
            <asp:BoundField DataField="ExpDate" HeaderText="ExpDate" SortExpression="ExpDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DBManagePayments" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [PaymentOptions] WHERE ([UserID] = @UserID)" DeleteCommand="DELETE FROM [PaymentOptions] WHERE [PaymentID] = @PaymentID" InsertCommand="INSERT INTO [PaymentOptions] ([UserID], [NameOnCard], [CardNumber], [CardType], [SecurityCode], [ExpDate]) VALUES (@UserID, @NameOnCard, @CardNumber, @CardType, @SecurityCode, @ExpDate)" UpdateCommand="UPDATE [PaymentOptions] SET [UserID] = @UserID, [NameOnCard] = @NameOnCard, [CardNumber] = @CardNumber, [CardType] = @CardType, [SecurityCode] = @SecurityCode, [ExpDate] = @ExpDate WHERE [PaymentID] = @PaymentID">
        <DeleteParameters>
            <asp:Parameter Name="PaymentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="NameOnCard" Type="String" />
            <asp:Parameter Name="CardNumber" Type="String" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="SecurityCode" Type="String" />
            <asp:Parameter DbType="Date" Name="ExpDate" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="LBLCurrentUser" Name="UserID" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="NameOnCard" Type="String" />
            <asp:Parameter Name="CardNumber" Type="String" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="SecurityCode" Type="String" />
            <asp:Parameter DbType="Date" Name="ExpDate" />
            <asp:Parameter Name="PaymentID" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>

    <br />
    <br />
    <asp:Label ID="LBLPaymentName" runat="server" Text="Payment Name" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTPaymentName" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDPaymentName"
                    Runat="server"
                    ControlToValidate="TXTPaymentName"
                    Display="Dynamic"
                    ErrorMessage="*Please provide a Name for this payment method."
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LBLNameOnCard" runat="server" Text="Name On Card:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTNameOnCard" runat="server" Width="400px" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDNameOnCard"
                    Runat="server"
                    ControlToValidate="TXTNameOnCard"
                    Display="Dynamic"
                    ErrorMessage="*Please provide your name as it is on the card."
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LBLCardNumber" runat="server" Text="Card Number:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTCardNumber" runat="server" Width="400px" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDCardNumber"
                    Runat="server"
                    ControlToValidate="TXTCardNumber"
                    Display="Dynamic"
                    ErrorMessage="*Please provide a valid credit card number."
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LBLExpDate" runat="server" Text="Expiration Date:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTExpday" runat="server" TextMode="Date" CssClass="form-control" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDEXpday"
                    Runat="server"
                    ControlToValidate="TXTExpDay"
                    Display="Dynamic"
                    ErrorMessage="*Expiration date is a required field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LBLSecurityCode" runat="server" Text="Security Code:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTSecurityCode" runat="server" Width="400px" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDSecurityCode"
                    Runat="server"
                    ControlToValidate="TXTSecurityCode"
                    Display="Dynamic"
                    ErrorMessage="*Please provide the security code on the back of the card"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LBLCardType" runat="server" Text="Card Type:" Width="150px"></asp:Label>
    <asp:DropDownList ID="DDLCardType" runat="server" DataSourceID="DBNewCard" DataTextField="TypeName" DataValueField="TypeName" CssClass="form-control" Width="400px"></asp:DropDownList>
    <br />
    <asp:Button runat="server" ID="BTNAddCard" Text="Add New Card" OnClick="BTNAddCard_Click" CssClass="btn btn-default" />

    <asp:SqlDataSource ID="DBNewCard" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [TypeName] FROM [CardType]"></asp:SqlDataSource>

    <asp:Label ID="LBLCurrentUser" runat="server" Visible="False"></asp:Label>
</asp:Content>
