<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PMApplication.aspx.cs" Inherits="HAFH.PMApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" ID="PanelApplication" Visible="false">

     <h2 style="font-size: medium">Property Manager Application</h2>

    <asp:Label runat="server" Width="15%">Property Name: </asp:Label>
    <asp:TextBox runat="server" ID="PropNameTxt"></asp:TextBox>
    <br />
    <asp:Label runat="server" Width="15%">Property Desc: </asp:Label>
    <asp:TextBox runat="server" ID="PropDescTxt"></asp:TextBox>
    <br />
    <asp:Label runat="server" Width="15%">Address: </asp:Label>
    <asp:TextBox runat="server" ID="AddrTxt"></asp:TextBox>
    <br />
    <asp:Label runat="server" Width="15%">City: </asp:Label>
    <asp:DropDownList runat="server" ID="CityDDL" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName"></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>
    <br />
    <asp:Label runat="server" Width="15%">State: </asp:Label>
    <asp:DropDownList runat="server" ID="StDDL" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName"></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [StateName] FROM [States]"></asp:SqlDataSource>
    <br />
    <asp:Label runat="server" Width="15%">Zipcode: </asp:Label>
    <asp:TextBox runat="server" ID="ZipTxt"></asp:TextBox>
    <br />
    <asp:Label runat="server" Width="15%">Number of Bedrooms: </asp:Label>
    <asp:DropDownList runat="server" ID="BedroomDDL">
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
    <asp:Label runat="server" Width="15%">Number of Bathrooms: </asp:Label>
    <asp:DropDownList runat="server" ID="BathroomDDL">
        <asp:listitem text="1" value="1"></asp:listitem>
        <asp:listitem text="2" value="2"></asp:listitem>
        <asp:listitem text="3" value="3"></asp:listitem>
        <asp:listitem text="4" value="4"></asp:listitem>
    </asp:DropDownList>
    <br />
    <asp:Label runat="server" Width="15%">Handicap Accessible: </asp:Label>
    <asp:CheckBox runat="server" ID="HandiBool" />
    <br />
    <asp:Label runat="server" Width="15%">Has Pool: </asp:Label>
    <asp:CheckBox runat="server" ID="PoolBool" />
    <br />
    <asp:Label runat="server" Width="15%">Photos: </asp:Label>
    <asp:FileUpload runat="server" AllowMultiple="true" ID="PropPic" />
    <br />
    <asp:Label runat="server" Width="15%">Price per night: </asp:Label>
    <asp:TextBox runat="server" ID="PriceTxt"></asp:TextBox>
    <br />
    <asp:Button runat="server" ID="SubmitProp" Text="Submit" OnClick="SubmitProp_Click" />

    </asp:Panel>
</asp:Content>
