<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPropertySubmissions.aspx.cs" Inherits="HAFH.AdminDash.ViewPropertySubmissions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Property Submissions</h1>

    <asp:GridView ID="GVPropertySubmissions" runat="server" AutoGenerateColumns="False" DataKeyNames="PropertyID" DataSourceID="PropertySubmissions">
        <Columns>
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" InsertVisible="False" ReadOnly="True" SortExpression="PropertyID" />
            <asp:BoundField DataField="PropertyName" HeaderText="PropertyName" SortExpression="PropertyName" />
            <asp:BoundField DataField="PropertyOwner" HeaderText="PropertyOwner" SortExpression="PropertyOwner" />
            <asp:BoundField DataField="PropertyAddress" HeaderText="PropertyAddress" SortExpression="PropertyAddress" />
            <asp:BoundField DataField="PropertyCity" HeaderText="PropertyCity" SortExpression="PropertyCity" />
            <asp:BoundField DataField="PropertyState" HeaderText="PropertyState" SortExpression="PropertyState" />
            <asp:BoundField DataField="PropertyZipcode" HeaderText="PropertyZipcode" SortExpression="PropertyZipcode" />
            <asp:BoundField DataField="NumberOfBedrooms" HeaderText="NumberOfBedrooms" SortExpression="NumberOfBedrooms" />
            <asp:BoundField DataField="NumberOfBathrooms" HeaderText="NumberOfBathrooms" SortExpression="NumberOfBathrooms" />
            <asp:CheckBoxField DataField="IsHandycapAccessible" HeaderText="IsHandycapAccessible" SortExpression="IsHandycapAccessible" />
            <asp:CheckBoxField DataField="HasPool" HeaderText="HasPool" SortExpression="HasPool" />
            <asp:BoundField DataField="PropertyDesc" HeaderText="PropertyDesc" SortExpression="PropertyDesc" />
            <asp:BoundField DataField="CostPerNight" HeaderText="CostPerNight" SortExpression="CostPerNight" />
            <asp:CheckBoxField DataField="Is_Active" HeaderText="Is_Active" SortExpression="Is_Active" />
            <asp:CheckBoxField DataField="Is_Approved" HeaderText="Is_Approved" SortExpression="Is_Approved" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="PropertySubmissions" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Property] WHERE ([Is_Approved] = @Is_Approved)">
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="Is_Approved" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>