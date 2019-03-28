<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProperties.aspx.cs" Inherits="HAFH.ManageProperties" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Manage Properties
    </h1>

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    <asp:Button ID="BTNAddProperty" runat="server" Text="Add New Property" OnClick="BTNAddProperty_Click" />

</asp:Content>

