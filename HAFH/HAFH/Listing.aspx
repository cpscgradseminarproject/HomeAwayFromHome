<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="HAFH.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="font-size: medium">Listings</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>   
    <div ID="Listing Container">

        <div>
            <asp:Label runat="server" ID="PropNameLbl" Text="Property Name" Font-Size="X-Large"></asp:Label>
            <br />
            <asp:Label runat="server" ID="PropAdddrLbl" Text="Property Address" Font-Size="Large"></asp:Label>
            <br />
            <asp:Label runat="server" ID="PropDescrLbl" Text="This is a description of the property" Width="40%" Height="35%"></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="175px" Width="175px" BorderColor="White" BorderWidth="10px"/>
            <br />
            <asp:Button runat="server" ID="PropSelectBtn"  Text="View Listing" />
        </div>
       


    </div>
</asp:Content>
