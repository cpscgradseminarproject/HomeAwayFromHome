<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewUserRegistration.aspx.cs" Inherits="HAFH.NewUserRegistration" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<body>
    <div>
        <h2 style="font-size: medium">New User Registration</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div style="margin-bottom:10px">
            
            <div>
                <asp:Label runat="server" AssociatedControlID="UserName" Width="150px">User name</asp:Label>
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Width="400px" />    
                <asp:RequiredFieldValidator
                    ID="VALIDUserName"
                    Runat="server"
                    ControlToValidate="UserName"
                    Display="Dynamic"
                    ErrorMessage="*User Name is a rquired field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            </div>
        </div>




        <div id="UserDetails">
            <asp:Label ID="LBLFirstName" runat="server" Text="First Name:" Width="150px"></asp:Label>
            <asp:TextBox ID="TXTFirstName" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                 <asp:RequiredFieldValidator
                    ID="VALIDFirstName"
                    Runat="server"
                    ControlToValidate="TXTFirstName"
                    Display="Dynamic"
                    ErrorMessage="*First Name is a required field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLLastName" runat="server" Text="Last Name:" Width="150px"></asp:Label>
            <asp:TextBox ID="TXTLastName" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                 <asp:RequiredFieldValidator
                    ID="VALIDLastName"
                    Runat="server"
                    ControlToValidate="TXTLastName"
                    Display="Dynamic"
                    ErrorMessage="*Last Name is a required field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLEmail" runat="server" Text="Email Address:" Width="150px"></asp:Label>
            <asp:TextBox ID="TXTEmail" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                 <asp:RequiredFieldValidator
                    ID="VALIDEmail"
                    Runat="server"
                    ControlToValidate="TXTEmail"
                    Display="Dynamic"
                    ErrorMessage="*Email is a required field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLPhoneNumber" runat="server" Text="Phone Number:" Width="150px"></asp:Label>
            <asp:TextBox ID="TXTPhoneNumber" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                 <asp:RequiredFieldValidator
                    ID="VALIDPhoneNumber"
                    Runat="server"
                    ControlToValidate="TXTPhoneNumber"
                    Display="Dynamic"
                    ErrorMessage="*Phone Number is a required field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LBLBirthDate" runat="server" Text="Birth Date:" Width="150px"></asp:Label>
            <asp:TextBox ID="TXTBday" runat="server" TextMode="Date" CssClass="form-control" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDBday"
                    Runat="server"
                    ControlToValidate="TXTBday"
                    Display="Dynamic"
                    ErrorMessage="*Birthdate is a required field"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            <br />
            <br />
        </div>




        <div style="margin-bottom:10px">
            
            <div>
                <asp:Label runat="server" AssociatedControlID="Password" Width="150px">Password</asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Width="400px" />   
                <asp:RequiredFieldValidator
                    ID="ValiPass1"
                    Runat="server"
                    ControlToValidate="Password"
                    Display="Dynamic"
                    ErrorMessage="*Please enter a password"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div style="margin-bottom:10px">
            
            <div>
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" Width="150px">Confirm password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" Width="400px" /> 
                <asp:RequiredFieldValidator
                    ID="VALIDPass2"
                    Runat="server"
                    ControlToValidate="ConfirmPassword"
                    Display="Dynamic"
                    ErrorMessage="*Please confirm your password"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
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
