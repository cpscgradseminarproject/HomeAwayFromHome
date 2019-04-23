<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPropertySubmissions.aspx.cs" Inherits="HAFH.AdminDash.ViewPropertySubmissions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Property Submissions</h1>

    <asp:GridView ID="GVPropertySubmissions" runat="server" AutoGenerateColumns="False" DataKeyNames="PropertyID" DataSourceID="PropertySubmissions" AllowPaging="True">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
            <ControlStyle CssClass="btn btn-default" />
            </asp:CommandField>
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" InsertVisible="False" ReadOnly="True" SortExpression="PropertyID" />
            <asp:BoundField DataField="PropertyName" HeaderText="PropertyName" SortExpression="PropertyName" ReadOnly="True" />
            <asp:BoundField DataField="PropertyOwner" HeaderText="PropertyOwner" SortExpression="PropertyOwner" ReadOnly="True" />
            <asp:BoundField DataField="PropertyAddress" HeaderText="PropertyAddress" SortExpression="PropertyAddress" ReadOnly="True" />
            <asp:BoundField DataField="PropertyCity" HeaderText="PropertyCity" SortExpression="PropertyCity" ReadOnly="True" />
            <asp:BoundField DataField="PropertyState" HeaderText="PropertyState" SortExpression="PropertyState" ReadOnly="True" />
            <asp:BoundField DataField="PropertyZipcode" HeaderText="PropertyZipcode" SortExpression="PropertyZipcode" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfBedrooms" HeaderText="NumberOfBedrooms" SortExpression="NumberOfBedrooms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfBathrooms" HeaderText="NumberOfBathrooms" SortExpression="NumberOfBathrooms" ReadOnly="True" />
            <asp:CheckBoxField DataField="IsHandycapAccessible" HeaderText="IsHandycapAccessible" SortExpression="IsHandycapAccessible" ReadOnly="True" />
            <asp:CheckBoxField DataField="HasPool" HeaderText="HasPool" SortExpression="HasPool" ReadOnly="True" />
            <asp:BoundField DataField="PropertyDesc" HeaderText="PropertyDesc" SortExpression="PropertyDesc" ReadOnly="True" />
            <asp:BoundField DataField="CostPerNight" HeaderText="CostPerNight" SortExpression="CostPerNight" ReadOnly="True" />
            <asp:CheckBoxField DataField="Is_Active" HeaderText="Is_Active" SortExpression="Is_Active" />
            <asp:CheckBoxField DataField="Is_Approved" HeaderText="Is_Approved" SortExpression="Is_Approved" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="PropertySubmissions" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Property] WHERE ([Is_Approved] = @Is_Approved)" DeleteCommand="DELETE FROM [Property] WHERE [PropertyID] = @PropertyID" InsertCommand="INSERT INTO [Property] ([PropertyName], [PropertyOwner], [PropertyAddress], [PropertyCity], [PropertyState], [PropertyZipcode], [NumberOfBedrooms], [NumberOfBathrooms], [IsHandycapAccessible], [HasPool], [PropertyDesc], [CostPerNight], [Is_Active], [Is_Approved]) VALUES (@PropertyName, @PropertyOwner, @PropertyAddress, @PropertyCity, @PropertyState, @PropertyZipcode, @NumberOfBedrooms, @NumberOfBathrooms, @IsHandycapAccessible, @HasPool, @PropertyDesc, @CostPerNight, @Is_Active, @Is_Approved)" UpdateCommand="UPDATE [Property] SET  [Is_Active] = @Is_Active, [Is_Approved] = @Is_Approved WHERE [PropertyID] = @PropertyID">
        <DeleteParameters>
            <asp:Parameter Name="PropertyID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PropertyName" Type="String" />
            <asp:Parameter Name="PropertyOwner" Type="String" />
            <asp:Parameter Name="PropertyAddress" Type="String" />
            <asp:Parameter Name="PropertyCity" Type="String" />
            <asp:Parameter Name="PropertyState" Type="String" />
            <asp:Parameter Name="PropertyZipcode" Type="Int32" />
            <asp:Parameter Name="NumberOfBedrooms" Type="Int32" />
            <asp:Parameter Name="NumberOfBathrooms" Type="Int32" />
            <asp:Parameter Name="IsHandycapAccessible" Type="Boolean" />
            <asp:Parameter Name="HasPool" Type="Boolean" />
            <asp:Parameter Name="PropertyDesc" Type="String" />
            <asp:Parameter Name="CostPerNight" Type="Decimal" />
            <asp:Parameter Name="Is_Active" Type="Boolean" />
            <asp:Parameter Name="Is_Approved" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="Is_Approved" Type="Boolean" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Is_Active" Type="Boolean" />
            <asp:Parameter Name="Is_Approved" Type="Boolean" />
            <asp:Parameter Name="PropertyID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>