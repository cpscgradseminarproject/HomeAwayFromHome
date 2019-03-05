<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="HAFH.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2 style="font-size: medium">Reservation Dates</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>   
    <div id="cal">
        <asp:Label runat="server">Check In:</asp:Label>
        <asp:Calendar runat="server">
        </asp:Calendar>
    </div>
    
    <div id="cal2">
        <asp:Label runat="server">Check Out:</asp:Label>
        <asp:Calendar runat="server">
    </asp:Calendar>
    </div>
    <br />

    <div>
        <asp:Label runat="server"></asp:Label>
    </div>
    <br />
    <div>
        <asp:Button runat="server" Text="Reserve" />
    </div>

    <br />
</asp:Content>
