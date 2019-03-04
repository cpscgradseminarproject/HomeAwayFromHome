<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="HAFH.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified" style="height: 535px">
        <tr>
            <td class="modal-lg" style="width: 200px">
                <asp:Label ID="ChkInLbl" runat="server" Text="Check In:"></asp:Label>
            </td>
            <td><asp:Calendar ID="CheckIn" runat="server" Height="300px" Width="300px"></asp:Calendar></td>
        </tr>

        <tr>
            <td class="modal-lg" style="width: 200px">
                <asp:Label ID="ChkOutLbl" runat="server" Text="Check Out:"></asp:Label>
            </td>
            <td><asp:Calendar ID="CheckOut" runat="server" Height="300px" OnSelectionChanged="CheckOut_SelectionChanged" Width="300px"></asp:Calendar></td>
        </tr>
    </table>
    <asp:Label ID="CostUI" runat="server" Width="1500px" Height="170px"></asp:Label>
    <table class="nav-justified">
        <tr>
            <td class="modal-lg" style="width: 200px">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="SubmitReservation" runat="server" Text="Make Reservation" />
            </td>
        </tr>
    </table>

</asp:Content>
