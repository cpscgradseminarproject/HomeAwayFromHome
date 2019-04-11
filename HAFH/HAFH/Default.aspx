<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HAFH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-8">

    <h2>Recent listings</h2>
    <br />
    <div class ="col-md-12">
        <img src="https://place-hold.it/150x150" width="150px" height="150px" class="pull-left" />
        <h1><asp:Label ID="LBLPropertyName" runat="server"></asp:Label></h1>
        <h2><asp:Label ID="LBLAddress" runat="server" Text="Label"></asp:Label></h2>
        <p><asp:Label ID="LBLDesc" runat="server" Text="Label"></asp:Label></p>
        <asp:Label ID="LBLBedroom" runat="server" Text="Number Of Bedroom:"></asp:Label>
        <asp:Label ID="LBLBedroomCount" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="LBLBathroom" runat="server" Text="Number Of Bathrooms:"></asp:Label>
        <asp:Label ID="LBLBathroomCount" runat="server" Text="Label"></asp:Label>

    </div>


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
