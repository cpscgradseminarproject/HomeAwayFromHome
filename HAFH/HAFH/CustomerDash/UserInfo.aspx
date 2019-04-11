<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="HAFH.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="font-size: medium">Edit Account</h2>
    <div>
        <asp:Label runat="server" Width="6%">Username: </asp:Label>
        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">First Name: </asp:Label>
        <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Last Name: </asp:Label>
        <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Phone: </asp:Label>
        <asp:TextBox ID="TxtPhoneNumber" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Email: </asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Password: </asp:Label>
        <asp:TextBox runat="server" ID="TxtPsswrd"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="6%">Confirm Password: </asp:Label>
        <asp:TextBox ID="TxtPsswrdcfrm" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="SbmtInfo" Text="Submit" runat="server" OnClick="SbmtInfo_Click" style="height: 26px" />

    </div>
</asp:Content>
