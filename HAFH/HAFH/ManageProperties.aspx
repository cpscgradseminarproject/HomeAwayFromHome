<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProperties.aspx.cs" Inherits="HAFH.ManageProperties" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Manage Properties
    </h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PropertyID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Property] WHERE [PropertyID] = @original_PropertyID AND [PropertyName] = @original_PropertyName AND [PropertyOwner] = @original_PropertyOwner AND [PropertyAddress] = @original_PropertyAddress AND [PropertyCity] = @original_PropertyCity AND [PropertyState] = @original_PropertyState AND [PropertyZipcode] = @original_PropertyZipcode AND [NumberOfBedrooms] = @original_NumberOfBedrooms AND [NumberOfBathrooms] = @original_NumberOfBathrooms AND [IsHandycapAccessible] = @original_IsHandycapAccessible AND [HasPool] = @original_HasPool AND [PropertyDesc] = @original_PropertyDesc AND [CostPerNight] = @original_CostPerNight AND [Is_Active] = @original_Is_Active AND [Is_Approved] = @original_Is_Approved" InsertCommand="INSERT INTO [Property] ([PropertyName], [PropertyOwner], [PropertyAddress], [PropertyCity], [PropertyState], [PropertyZipcode], [NumberOfBedrooms], [NumberOfBathrooms], [IsHandycapAccessible], [HasPool], [PropertyDesc], [CostPerNight], [Is_Active], [Is_Approved]) VALUES (@PropertyName, @PropertyOwner, @PropertyAddress, @PropertyCity, @PropertyState, @PropertyZipcode, @NumberOfBedrooms, @NumberOfBathrooms, @IsHandycapAccessible, @HasPool, @PropertyDesc, @CostPerNight, @Is_Active, @Is_Approved)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Property]" UpdateCommand="UPDATE [Property] SET [PropertyName] = @PropertyName, [PropertyOwner] = @PropertyOwner, [PropertyAddress] = @PropertyAddress, [PropertyCity] = @PropertyCity, [PropertyState] = @PropertyState, [PropertyZipcode] = @PropertyZipcode, [NumberOfBedrooms] = @NumberOfBedrooms, [NumberOfBathrooms] = @NumberOfBathrooms, [IsHandycapAccessible] = @IsHandycapAccessible, [HasPool] = @HasPool, [PropertyDesc] = @PropertyDesc, [CostPerNight] = @CostPerNight, [Is_Active] = @Is_Active, [Is_Approved] = @Is_Approved WHERE [PropertyID] = @original_PropertyID AND [PropertyName] = @original_PropertyName AND [PropertyOwner] = @original_PropertyOwner AND [PropertyAddress] = @original_PropertyAddress AND [PropertyCity] = @original_PropertyCity AND [PropertyState] = @original_PropertyState AND [PropertyZipcode] = @original_PropertyZipcode AND [NumberOfBedrooms] = @original_NumberOfBedrooms AND [NumberOfBathrooms] = @original_NumberOfBathrooms AND [IsHandycapAccessible] = @original_IsHandycapAccessible AND [HasPool] = @original_HasPool AND [PropertyDesc] = @original_PropertyDesc AND [CostPerNight] = @original_CostPerNight AND [Is_Active] = @original_Is_Active AND [Is_Approved] = @original_Is_Approved">
        <DeleteParameters>
            <asp:Parameter Name="original_PropertyID" Type="Int32" />
            <asp:Parameter Name="original_PropertyName" Type="String" />
            <asp:Parameter Name="original_PropertyOwner" Type="String" />
            <asp:Parameter Name="original_PropertyAddress" Type="String" />
            <asp:Parameter Name="original_PropertyCity" Type="String" />
            <asp:Parameter Name="original_PropertyState" Type="String" />
            <asp:Parameter Name="original_PropertyZipcode" Type="Int32" />
            <asp:Parameter Name="original_NumberOfBedrooms" Type="Int32" />
            <asp:Parameter Name="original_NumberOfBathrooms" Type="Int32" />
            <asp:Parameter Name="original_IsHandycapAccessible" Type="Boolean" />
            <asp:Parameter Name="original_HasPool" Type="Boolean" />
            <asp:Parameter Name="original_PropertyDesc" Type="String" />
            <asp:Parameter Name="original_CostPerNight" Type="Decimal" />
            <asp:Parameter Name="original_Is_Active" Type="Boolean" />
            <asp:Parameter Name="original_Is_Approved" Type="Boolean" />
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
        <UpdateParameters>
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
            <asp:Parameter Name="original_PropertyID" Type="Int32" />
            <asp:Parameter Name="original_PropertyName" Type="String" />
            <asp:Parameter Name="original_PropertyOwner" Type="String" />
            <asp:Parameter Name="original_PropertyAddress" Type="String" />
            <asp:Parameter Name="original_PropertyCity" Type="String" />
            <asp:Parameter Name="original_PropertyState" Type="String" />
            <asp:Parameter Name="original_PropertyZipcode" Type="Int32" />
            <asp:Parameter Name="original_NumberOfBedrooms" Type="Int32" />
            <asp:Parameter Name="original_NumberOfBathrooms" Type="Int32" />
            <asp:Parameter Name="original_IsHandycapAccessible" Type="Boolean" />
            <asp:Parameter Name="original_HasPool" Type="Boolean" />
            <asp:Parameter Name="original_PropertyDesc" Type="String" />
            <asp:Parameter Name="original_CostPerNight" Type="Decimal" />
            <asp:Parameter Name="original_Is_Active" Type="Boolean" />
            <asp:Parameter Name="original_Is_Approved" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:Button ID="BTNAddProperty" runat="server" Text="Add New Property" OnClick="BTNAddProperty_Click" />

</asp:Content>

