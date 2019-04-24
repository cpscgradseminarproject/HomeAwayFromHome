<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewReservation.aspx.cs" Inherits="HAFH.ViewReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Reservations</h1>
    <asp:Label ID="LBLUserID" runat="server" Visible="false"></asp:Label>
     <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="ReservationDB">
        <Columns>
            <asp:CommandField ButtonType="Button" DeleteText="Cancel Reservation" ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-default" />
            </asp:CommandField>
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" SortExpression="PropertyID" Visible="False" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" Visible="False" />
            <asp:BoundField DataField="PropertyName" HeaderText="PropertyName" SortExpression="PropertyName" />
            <asp:BoundField DataField="PropertyAddress" HeaderText="PropertyAddress" SortExpression="PropertyAddress" />
            <asp:BoundField DataField="PropertyCity" HeaderText="PropertyCity" SortExpression="PropertyCity" />
            <asp:BoundField DataField="PropertyState" HeaderText="PropertyState" SortExpression="PropertyState" />
            <asp:BoundField DataField="PropertyZipcode" HeaderText="PropertyZipcode" SortExpression="PropertyZipcode" />
            <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
            <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
            <asp:BoundField DataField="RentalTotalCost" HeaderText="RentalTotalCost" SortExpression="RentalTotalCost" />
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="ReservationDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="GetReservations" SelectCommandType="StoredProcedure" DeleteCommand="CancelReservation" DeleteCommandType="StoredProcedure">
         <DeleteParameters>
             <asp:Parameter Name="RentalID" Type="Int32" />
         </DeleteParameters>
         <SelectParameters>
             <asp:ControlParameter ControlID="LBLUserID" Name="UserID" PropertyName="Text" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
