<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageStates.aspx.cs" Inherits="HAFH.AdminDash.ManageStates" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage States</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StateName" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StateName" HeaderText="StateName" ReadOnly="True" SortExpression="StateName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [States] WHERE [StateName] = @StateName" InsertCommand="INSERT INTO [States] ([StateName]) VALUES (@StateName)" SelectCommand="SELECT [StateName] FROM [States]">
        <DeleteParameters>
            <asp:Parameter Name="StateName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StateName" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>


    <asp:Label ID="LBLAddState" runat="server" Text="Add a New State:" Width="150px"></asp:Label>
    <asp:TextBox ID="TXTAddState" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="VALIDCardNumber"
                    Runat="server"
                    ControlToValidate="TXTAddState"
                    Display="Dynamic"
                    ErrorMessage="*Please provide a state"
                    ForeColor="red">
                </asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="BTNAddState" runat="server" Text="Add" OnClick="BTNAddState_Click" />
</asp:Content>