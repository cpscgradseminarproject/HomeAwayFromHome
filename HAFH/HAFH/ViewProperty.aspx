<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProperty.aspx.cs" Inherits="HAFH.Scripts.Poperty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 535px">
        <tr>
            <td class="modal-lg" style="width: 200px">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="PropertyTitle" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="PropertyDescr" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Button ID="ReservBtn" Text="Reserve" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table>

                </table>
            </td>
        </tr>
    </table>
</asp:Content>
