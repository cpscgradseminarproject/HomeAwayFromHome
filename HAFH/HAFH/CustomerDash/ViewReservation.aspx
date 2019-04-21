<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewReservation.aspx.cs" Inherits="HAFH.ViewReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="font-size: medium">Reservations</h2>
    <asp:Label ID="LBLUserID" runat="server" Visible="false"></asp:Label>
     <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="ReservationDB">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" SortExpression="PropertyID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
            <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
            <asp:BoundField DataField="RentalTotalCost" HeaderText="RentalTotalCost" SortExpression="RentalTotalCost" />
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="ReservationDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="GetReservations" SelectCommandType="StoredProcedure">
         <SelectParameters>
             <asp:ControlParameter ControlID="LBLUserID" Name="UserID" PropertyName="Text" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
