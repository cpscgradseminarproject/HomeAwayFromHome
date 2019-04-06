<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePayments.aspx.cs" Inherits="HAFH.PaymentManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="font-size: medium">Manage Payment Methods</h2>
    <asp:GridView ID="PaymentGvw" runat="server">
    </asp:GridView>
    <asp:Button runat="server" ID="SbmtChange" Text="Save Changes" />
</asp:Content>
