<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="HAFH.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="font-size: medium">Listings</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>   
    <div ID="Listing Container">

        <div>
            <asp:Label runat="server" ID="LBLPropName" Font-Size="X-Large"></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" Height="175px" Width="175px" BorderColor="White" BorderWidth="10px"/>
            <br />
            <h4>Address: </h4>            
            <asp:Label runat="server" ID="LBLPropAddress"></asp:Label>
            <asp:Label runat="server" ID="LBLPropCity"></asp:Label>
            <asp:Label runat="server" ID="LBLPropState"></asp:Label>
            <asp:Label runat="server" ID="LBLPropZipcode"></asp:Label>
            <br />
            <h4>Number of Bedrooms: </h4>
            <asp:Label runat="server" ID="LBLNumBedrooms"></asp:Label>
            <br />
            <h4>Number of Bathrooms: </h4>
            <asp:Label runat="server" ID="LBLNumBathrooms"></asp:Label>
            <br />
            <h4>Description: </h4>
            <asp:Label runat="server" ID="LBLPropDescr" Width="40%" Height="35%"></asp:Label>
            <br />
            <h4>Rate Per Night: </h4>
            <asp:Label runat="server" ID="LBLCostPerNight"></asp:Label>
            <br />
            <asp:Button runat="server" ID="BTNReservation"  Text="Make Reservation" OnClick="BTNReservation_Click" CssClass="btn btn-default" />
        </div>
       


    </div>
</asp:Content>
