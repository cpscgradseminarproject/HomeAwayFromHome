<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HAFH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="col-md-8">
    <asp:PlaceHolder ID="PropertySynopsisPage" runat="server">
    <h2>Recent listings</h2>

    </asp:PlaceHolder>
    </div>

<div class="col-md-4">
    <br />
    <asp:Button ID="BTNCreatAccount" CssClass="btn btn-default col-xs-12" runat="server" Text="Register New Account" OnClick="BTNCreatAccount_Click" />
    <br />
    <br/ />
    <asp:Button ID="BTNLogin" CssClass="btn btn-default col-xs-12" runat="server" Text="Login" OnClick="BTNLogin_Click" />
    <br />
</div>

</asp:Content>
