<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewRentalHistory.aspx.cs" Inherits="HAFH.ViewRentalHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="font-size: medium">Rental History</h2>
    <asp:Label ID="LBLUserID" runat="server"></asp:Label>
    <asp:GridView runat="server" ID="RentalHistoryGvw" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="RentalHistoryDB">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" SortExpression="PropertyID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
            <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
            <asp:BoundField DataField="RentalTotalCost" HeaderText="RentalTotalCost" SortExpression="RentalTotalCost" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="RentalHistoryDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="GetHistory" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="LBLUserID" Name="UserID" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
