<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewProperty.aspx.cs" Inherits="HAFH.AddNewProperty" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="PanelProperty" runat="server">
    
    <div>
            <h1>Add New Property</h1>

             <asp:Label runat="server" Width="150px">Property Name: </asp:Label>
    <asp:TextBox runat="server" ID="PropNameTxt" CssClass="form-control" Width="400px"></asp:TextBox>
                 <asp:RequiredFieldValidator
                    ID="VALIDPropertyName"
                    Runat="server"
                    ControlToValidate="PropNameTxt"
                    Display="Dynamic"
                    ErrorMessage="*Please provide a name for your property"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label runat="server" Width="150px">Property Desc: </asp:Label>
    <asp:TextBox runat="server" ID="PropDescTxt" CssClass="form-control" Width="400px" Height="400px" TextMode="MultiLine"></asp:TextBox>
               <asp:RequiredFieldValidator
                    ID="VALIDDesc"
                    Runat="server"
                    ControlToValidate="PropDescTxt"
                    Display="Dynamic"
                    ErrorMessage="*Please provide a description of your rental property"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label runat="server" Width="150px">Address: </asp:Label>
    <asp:TextBox runat="server" ID="AddrTxt" CssClass="form-control" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDAddress"
                    Runat="server"
                    ControlToValidate="AddrTxt"
                    Display="Dynamic"
                    ErrorMessage="*Please provide the address of your rental property"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label runat="server" Width="150px">State: </asp:Label>
    <asp:DropDownList runat="server" ID="StDDL" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName" CssClass="form-control" Width="400px" AutoPostBack="True"></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [StateName] FROM [States]"></asp:SqlDataSource>
    <br />
    <asp:Label runat="server" Width="150px">City: </asp:Label>
    <asp:DropDownList runat="server" ID="CityDDL" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName" CssClass="form-control" Width="400px"></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CityName] FROM [City] WHERE ([State] = @State)">
         <SelectParameters>
             <asp:ControlParameter ControlID="StDDL" Name="State" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
            </asp:SqlDataSource>
    <br />

    <asp:Label runat="server" Width="150px">Zipcode: </asp:Label>
    <asp:TextBox runat="server" ID="ZipTxt" CssClass="form-control" Width="400px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDZipcode"
                    Runat="server"
                    ControlToValidate="ZipTxt"
                    Display="Dynamic"
                    ErrorMessage="*Please provide the zipcode of your rental property"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Label runat="server" Width="150px">Number of Bedrooms: </asp:Label>
    <asp:DropDownList runat="server" ID="BedroomDDL" CssClass="form-control" Width="400px">
        <asp:listitem text="1" value="1"></asp:listitem>
        <asp:listitem text="2" value="2"></asp:listitem>
        <asp:listitem text="3" value="3"></asp:listitem>
        <asp:listitem text="4" value="4"></asp:listitem>
        <asp:listitem text="5" value="5"></asp:listitem>
        <asp:listitem text="6" value="6"></asp:listitem>
        <asp:listitem text="7" value="7"></asp:listitem>
        <asp:listitem text="8" value="8"></asp:listitem>
        <asp:listitem text="9" value="9"></asp:listitem>
    </asp:DropDownList>
    <br />
    <asp:Label runat="server" Width="150px">Number of Bathrooms: </asp:Label>
    <asp:DropDownList runat="server" ID="BathroomDDL" CssClass="form-control" Width="400px">
        <asp:listitem text="1" value="1"></asp:listitem>
        <asp:listitem text="2" value="2"></asp:listitem>
        <asp:listitem text="3" value="3"></asp:listitem>
        <asp:listitem text="4" value="4"></asp:listitem>
    </asp:DropDownList>
    <br />
    <asp:Label runat="server" Width="150px">Handicap Accessible: </asp:Label>
    <asp:CheckBox runat="server" ID="HandiBool" />
    <br />
    <asp:Label runat="server" Width="150px">Has Pool: </asp:Label>
    <asp:CheckBox runat="server" ID="PoolBool" />
    <br />
    <asp:Label runat="server" Width="150px">Photos: </asp:Label>
    <asp:FileUpload runat="server" AllowMultiple="true" ID="PropPic" />
    <br />
    <asp:Label runat="server" Width="150px">Price per night: </asp:Label>
    <asp:TextBox runat="server" ID="PriceTxt" CssClass="form-control" Width="400px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDCost"
                    Runat="server"
                    ControlToValidate="PriceTxt"
                    Display="Dynamic"
                    ErrorMessage="*Please provide a nightly cost for your rental"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Button runat="server" ID="SubmitProp" Text="Submit" OnClick="SubmitProp_Click" CssClass="btn btn-default" />
        </div>

        </asp:Panel>
</asp:Content>
