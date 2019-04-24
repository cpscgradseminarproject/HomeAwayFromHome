<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="HAFH.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LBLSearchTerm" runat="server"></asp:Label>
    <asp:Label ID="LBLType" runat="server"></asp:Label>
    <asp:Label ID="LBLPropID" runat="server"></asp:Label>
    <br />
    

   

    <asp:DataList ID="DataList1" runat="server" DataKeyField="PropertyID" DataSourceID="MainSearchDB" OnItemCommand="DataList1_ItemCommand" Width="100%">
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
    <asp:SqlDataSource ID="MainSearchDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="MainSearch" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="LBLSearchTerm" Name="SearchInput" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    

   

</asp:Content>
