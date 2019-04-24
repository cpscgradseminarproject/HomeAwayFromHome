<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewUserRegistration.aspx.cs" Inherits="HAFH.NewUserRegistration" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<body style="font-family: Arial, Helvetica, sans-serif; font-size: small">
    <div>
        <h2 style="font-size: medium">New User Registration</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div style="margin-bottom:10px">
            
            <div>
                <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                <asp:TextBox runat="server" ID="UserName" />                
            </div>
        </div>




        <div id="UserDetails">
            <asp:Label ID="LBLFirstName" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="TXTFirstName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LBLLastName" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="TXTLastName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LBLEmail" runat="server" Text="Email Address:"></asp:Label>
            <asp:TextBox ID="TXTEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LBLPhoneNumber" runat="server" Text="Phone Number:"></asp:Label>
            <asp:TextBox ID="TXTPhoneNumber" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LBLBirthDate" runat="server" Text="Birth Date:"></asp:Label>
            <asp:TextBox ID="TXTBday" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
        </div>




        <div style="margin-bottom:10px">
            
            <div>
                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" />                
            </div>
        </div>
        <div style="margin-bottom:10px">
            
            <div>
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />                
            </div>
        </div>
        <div>
            <div>
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</body>
</asp:Content>
