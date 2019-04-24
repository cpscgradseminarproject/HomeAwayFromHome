<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewRenterHistory.aspx.cs" Inherits="HAFH.ViewRenterHistory" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>View Renter History</h1>
    <asp:Label ID ="LBLPropertyOwner" runat="server" Visible="False"></asp:Label>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="PropertyOwnerHistoryDB" Width="1100px">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
            <asp:BoundField DataField="PropertyName" HeaderText="PropertyName" SortExpression="PropertyName" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" Visible="False" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
            <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
            <asp:BoundField DataField="RentalTotalCost" HeaderText="RentalTotalCost" SortExpression="RentalTotalCost" />
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" SortExpression="PropertyID" Visible="False" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="PropertyOwnerHistoryDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="ViewRenters" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="LBLPropertyOwner" Name="PropertyOwner" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>