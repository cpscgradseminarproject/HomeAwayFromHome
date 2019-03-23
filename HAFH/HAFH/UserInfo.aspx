<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="HAFH.AccountEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="font-size: medium">Edit Account</h2>
    <div>
        <asp:Label runat="server" Width="6%">First Name: </asp:Label>
        <asp:TextBox ID="FstName" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Last Name: </asp:Label>
        <asp:TextBox ID="LstName" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Email: </asp:Label>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Password: </asp:Label>
        <asp:TextBox runat="server" ID="Psswrd"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Confirm Password: </asp:Label>
        <asp:TextBox ID="Psswrdcfrm" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="SbmtInfo" Text="Submit" runat="server" />
    </div>
</asp:Content>
