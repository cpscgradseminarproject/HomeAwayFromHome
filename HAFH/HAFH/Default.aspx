<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HAFH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-8">

    <h2>Recent listings</h2>
    <br />
    <div class ="col-md-12">
        <img src="https://place-hold.it/150x150" width="150px" height="150px" class="pull-left" />
        <h2>A Property Title</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt vulputate orci vel aliquet. Aenean tincidunt dui eu nibh sodales pharetra. Suspendisse ac lorem nec enim rutrum venenatis ac at odio. Sed fermentum nibh a magna dapibus cursus. Sed bibendum neque non euismod sollicitudin. Proin consectetur orci dignissim mi imperdiet blandit. Vivamus sed luctus ligula. In mollis bibendum mi, ac suscipit nunc faucibus et. Phasellus sit amet lacus aliquet nibh elementum congue vel eu tellus. In quis libero egestas, posuere nulla sit amet, facilisis mauris.</p>
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
