<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HAFH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="col-md-8">
    <h1>Recent listings</h1>

        <div class ="PropertySynopsis">
            <asp:Label ID="LBLPropertyTitle_1" runat="server" Text="Title"></asp:Label>
            <br />
            <asp:Label ID="LBLAddress_1" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:Label ID="LBLPropertyID_1" runat="server" Text="PropertyID"></asp:Label>
            <br />
            <asp:Label ID="LBLDesc_1" runat="server" Text="Desc"></asp:Label>
            <br />
            <asp:Label ID="LBLBedroomCount_1" runat="server" Text="BedroomCount"></asp:Label>
            <br />
            <asp:Label ID="LBLBathroomCount_1" runat="server" Text="BathroomCount"></asp:Label>
            <br />
            <asp:Button ID="BTNViewFullListing_1" runat="server" Text="View Full Listing" OnClick="FullListing" />
        </div>

        <div class ="PropertySynopsis">
            <asp:Label ID="LBLPropertyTitle_2" runat="server" Text="Title"></asp:Label>
            <br />
            <asp:Label ID="LBLAddress_2" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:Label ID="LBLPropertyID_2" runat="server" Text="PropertyID"></asp:Label>
            <br />
            <asp:Label ID="LBLDesc_2" runat="server" Text="Desc"></asp:Label>
            <br />
            <asp:Label ID="LBLBedroomCount_2" runat="server" Text="BedroomCount"></asp:Label>
            <br />
            <asp:Label ID="LBLBathroomCount_2" runat="server" Text="BathroomCount"></asp:Label>
            <br />
            <asp:Button ID="BTNViewFullListing_2" runat="server" Text="View Full Listing" />
        </div>

        <div class ="PropertySynopsis">
            <asp:Label ID="LBLPropertyTitle_3" runat="server" Text="Title"></asp:Label>
            <br />
            <asp:Label ID="LBLAddress_3" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:Label ID="LBLPropertyID_3" runat="server" Text="PropertyID"></asp:Label>
            <br />
            <asp:Label ID="LBLDesc_3" runat="server" Text="Desc"></asp:Label>
            <br />
            <asp:Label ID="LBLBedroomCount_3" runat="server" Text="BedroomCount"></asp:Label>
            <br />
            <asp:Label ID="LBLBathroomCount_3" runat="server" Text="BathroomCount"></asp:Label>
            <br />
            <asp:Button ID="BTNViewFullListing_3" runat="server" Text="View Full Listing" />
        </div>

        <div class ="PropertySynopsis">
            <asp:Label ID="LBLPropertyTitle_4" runat="server" Text="Title"></asp:Label>
            <br />
            <asp:Label ID="LBLAddress_4" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:Label ID="LBLPropertyID_4" runat="server" Text="PropertyID"></asp:Label>
            <br />
            <asp:Label ID="LBLDesc_4" runat="server" Text="Desc"></asp:Label>
            <br />
            <asp:Label ID="LBLBedroomCount_4" runat="server" Text="BedroomCount"></asp:Label>
            <br />
            <asp:Label ID="LBLBathroomCount_4" runat="server" Text="BathroomCount"></asp:Label>
            <br />
            <asp:Button ID="BTNViewFullListing_4" runat="server" Text="View Full Listing" />
        </div>

        <div class ="PropertySynopsis">
            <asp:Label ID="LBLPropertyTitle_5" runat="server" Text="Title"></asp:Label>
            <br />
            <asp:Label ID="LBLAddress_5" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:Label ID="LBLPropertyID_5" runat="server" Text="PropertyID"></asp:Label>
            <br />
            <asp:Label ID="LBLDesc_5" runat="server" Text="Desc"></asp:Label>
            <br />
            <asp:Label ID="LBLBedroomCount_5" runat="server" Text="BedroomCount"></asp:Label>
            <br />
            <asp:Label ID="LBLBathroomCount_5" runat="server" Text="BathroomCount"></asp:Label>
            <br />
            <asp:Button ID="BTNViewFullListing_5" runat="server" Text="View Full Listing" />
        </div>


    <asp:PlaceHolder ID="PropertySynopsisPage" runat="server">
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
