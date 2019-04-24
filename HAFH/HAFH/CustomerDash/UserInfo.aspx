<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="HAFH.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Edit Account</h1>
    <div>
        <asp:Label runat="server" Width="150px">Username: </asp:Label>
        <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="150px">First Name: </asp:Label>
        <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="150px">Last Name: </asp:Label>
        <asp:TextBox ID="TxtLastName" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="150px">Phone: </asp:Label>
        <asp:TextBox ID="TxtPhoneNumber" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="150px">Email: </asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="150px">Password: </asp:Label>
        <asp:TextBox runat="server" ID="TxtPsswrd" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Label runat="server" Width="150px">Confirm Password: </asp:Label>
        <asp:TextBox ID="TxtPsswrdcfrm" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
        <br />
        <asp:Button ID="SbmtInfo" Text="Submit" runat="server" OnClick="SbmtInfo_Click" style="height: 26px" CssClass="btn btn-default" />

    </div>
</asp:Content>
