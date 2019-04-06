<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HAFH.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <div>
         <h2 style="font-size: medium">Log In</h2>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                  <asp:Button runat="server" OnClick="SignIn" Text="Log in" />
               </div>
            </div>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Log out" />
               </div>
            </div>
         </asp:PlaceHolder>
      </div>


    <asp:Panel ID="CustomerPanel" CssClass="col-md-6" runat="server" Visible="False">
        <h1>Customer Control Panel</h1>
        <br />
        <br />
        <asp:Button ID="BTNAccount" CssClass="btn btn-default" runat="server" Text="Edit Account Information" OnClick="BTNAccount_Click" />
        <br />
        <br />
        <asp:Button ID="BTNPaymentMethods" CssClass="btn btn-default" runat="server" Text="Manage Payment Methods" OnClick="BTNPaymentMethods_Click" />
        <br />
        <br />
        <asp:Button ID="BTNViewReservtions" CssClass="btn btn-default" runat="server" Text="View Reservations" OnClick="BTNViewReservtions_Click" />
        <br />
        <br />
        <asp:Button ID="BTNViewRentalHistory" CssClass="btn btn-default" runat="server" Text="View Rental History" OnClick="BTNViewRentalHistory_Click" />
        <br />
        <br />
        <asp:Button ID="BTNViewDisputes" CssClass="btn btn-default" runat="server" Text="View Your Disputes" />
        <br />
        <br />
        <asp:Button ID="BTNPMApp" CssClass="btn btn-default" runat="server" Text="Apply to become a property manager" OnClick="BTNPMApp_Click" />
    </asp:Panel>


    <asp:Panel ID="PropertManagerPanel" CssClass="col-md-6" runat="server" Visible="False">
        <h1>Property Manager Controll Panel</h1>
        <br />
        <br />
        <asp:Button ID="BTNManageProperties" CssClass="btn btn-default" runat="server" Text="Manage Properties" OnClick="BTNManageProperties_Click" />
        <br />
        <br />
        <asp:Button ID="BTNViewRenterHistory" CssClass="btn btn-default" runat="server" Text="View Renter History" OnClick="BTNViewRenterHistory_Click" />
        <br />
        <br />
        <asp:Button ID="BTNDisputesAgainstYou" CssClass="btn btn-default" runat="server" Text="View Disputes Against You" OnClick="BTNDisputesAgainstYou_Click" />
        <br />
        <br />
        <asp:Button ID="BTNAccBal" CssClass="btn btn-default" runat="server" Text="View Account Ballance" OnClick="BTNAccBal_Click" />
        <br />
        <br />
        <asp:Button ID="BTNPMSettings" CssClass="btn btn-default" runat="server" Text="Property Manager Settings" OnClick="BTNPMSettings_Click" />
    </asp:Panel>


    <br clear="both"/>


</asp:Content>