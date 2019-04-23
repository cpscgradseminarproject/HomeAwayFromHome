<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="HAFH.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LBLSearchTerm" runat="server"></asp:Label>
    <asp:Label ID="LBLType" runat="server"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server" Width="100%">
         <ItemTemplate>
            <table class="PropertySynopsis" style="width:100%">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>            
             <h3><asp:Label ID="PropertyNameLabel" runat="server" Text='<%# Eval("PropertyName") %>' /></h3>
             <br />
             PropertyAddress:
             <asp:Label ID="PropertyAddressLabel" runat="server" Text='<%# Eval("PropertyAddress") %>' />
             <br />
             PropertyCity:
             <asp:Label ID="PropertyCityLabel" runat="server" Text='<%# Eval("PropertyCity") %>' />
             <br />
             PropertyState:
             <asp:Label ID="PropertyStateLabel" runat="server" Text='<%# Eval("PropertyState") %>' />
             <br />
             PropertyZipcode:
             <asp:Label ID="PropertyZipcodeLabel" runat="server" Text='<%# Eval("PropertyZipcode") %>' />
             <br />
             PropertyDesc:
             <asp:Label ID="PropertyDescLabel" runat="server" Text='<%# Eval("PropertyDesc") %>' />
             <br />
             NumberOfBedrooms:
             <asp:Label ID="NumberOfBedroomsLabel" runat="server" Text='<%# Eval("NumberOfBedrooms") %>' />
             <br />
             NumberOfBathrooms:
             <asp:Label ID="NumberOfBathroomsLabel" runat="server" Text='<%# Eval("NumberOfBathrooms") %>' />
             <br />
             PropertyID:
             <asp:Label ID="PropertyIDLabel" runat="server" Text='<%# Eval("PropertyID") %>' />
             <br />
             CostPerNight:
             <asp:Label ID="CostPerNightLabel" runat="server" Text='<%# Eval("CostPerNight") %>' />
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

   

</asp:Content>
