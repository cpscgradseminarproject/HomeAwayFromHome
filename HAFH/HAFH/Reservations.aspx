<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="HAFH.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">

    <h2 style="font-size: medium">Reservation Dates</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>
        <div class="PropertySynopsis">
        <asp:Label runat="server" ID="LBLPropName" Font-Size="X-Large"></asp:Label>
        <h4>Address: </h4>            
        <asp:Label runat="server" ID="LBLPropAddress"></asp:Label>
        <asp:Label runat="server" ID="LBLPropCity"></asp:Label>
        <asp:Label runat="server" ID="LBLPropState"></asp:Label>
        <asp:Label runat="server" ID="LBLPropZipcode"></asp:Label>
        <br />
        <h4>Rate Per Night: </h4>
        <asp:Label runat="server" ID="LBLCostPerNight"></asp:Label>
        </div>

    <div class="col-md-6">
        <div class="HAFHCal">
            <asp:Label runat="server">Check In:</asp:Label>
            <asp:Calendar runat="server" ID="CalCheckin" OnSelectionChanged="CalCheckin_SelectionChanged">
            </asp:Calendar>
        </div>
    </div>
    
    <div class="col-md-6">
        <div class="HAFHCal">
            <asp:Label runat="server">Check Out:</asp:Label>
            <asp:Calendar runat="server" ID="CalCheckout" OnSelectionChanged="CheckOut_SelectionChanged" Visible="False">
            </asp:Calendar>
        </div>
    </div>
    <br clear="both" />
    <br />
    <br />
        <asp:Label ID="LBLPaymentMethod" runat="server" Text="Please Select a payment method to be used:"></asp:Label>
        <asp:DropDownList ID="DDLPaymentMethod" runat="server" DataSourceID="PaymentMethodDB" DataTextField="PaymentName" DataValueField="PaymentID"></asp:DropDownList>
        <asp:SqlDataSource ID="PaymentMethodDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PaymentID], [PaymentName] FROM [PaymentOptions] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="LBLUserID" Name="UserID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <br />
        Check In: 
        <asp:Label ID="LBLCheckin" runat="server"></asp:Label>
        <br />
        <br />
        Check Out: 
        <asp:Label ID="LBLCheckout" runat="server"></asp:Label>
        <br />
        <br />
        Total Nights:
        <asp:Label ID="LBLTotalNight" runat="server"></asp:Label>
        <br />
        <br />
        Total Cost: 
        <asp:Label ID="LBLTotalCost" runat="server"></asp:Label>
    <br />
    <div>
        <asp:Button ID="BTNReserve" runat="server" Text="Book Now" OnClick="BTNReserve_Click" CssClass="btn btn-default" />
    </div>
    <asp:Label ID="LBLUserID" runat="server" Text="Label" Visible="false"></asp:Label>

    <br />
</div>
</asp:Content>
