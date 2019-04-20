<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HAFH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="col-md-8">
    <h1>Recent listings</h1>
            
    <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataKeyField="PropertyID" OnItemCommand="DataList_ItemCommand" DataSourceID="SqlDataSource1" Width="100%">
        <ItemTemplate>
            <table class="PropertySynopsis" style="width:100%">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <h3><asp:Label ID="PropertyNameLabel" runat="server" Text='<%# Eval("PropertyName") %>' /></h3>
                        City:
                        <asp:Label ID="PropertyCityLabel" runat="server" Text='<%# Eval("PropertyCity") %>' />
                        <br />
                        State:
                        <asp:Label ID="PropertyStateLabel" runat="server" Text='<%# Eval("PropertyState") %>' />
                        <br />
                        Bedrooms:
                        <asp:Label ID="NumberOfBedroomsLabel" runat="server" Text='<%# Eval("NumberOfBedrooms") %>' />
                        <br />
                        Bathrooms:
                        <asp:Label ID="NumberOfBathroomsLabel" runat="server" Text='<%# Eval("NumberOfBathrooms") %>' />
                        <br />
                        CostPerNight:
                        <asp:Label ID="CostPerNightLabel" runat="server" Text='<%# Eval("CostPerNight") %>' />
                        <br />
                        <asp:Label ID="PropertyIDLabel" Visible="false"  runat="server" Text='<%# Eval("PropertyID") %>' />
                        <br />
                        <asp:Button ID="ViewListing" Text="View Full Listing" CommandArgument='<%# Eval("PropertyID") %>' runat="server" />                        
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>


        </ItemTemplate>

    </asp:DataList>    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SelectPropertySynopsis" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <br />
    <br/ />


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