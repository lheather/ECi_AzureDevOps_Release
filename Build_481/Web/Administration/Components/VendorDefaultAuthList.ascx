<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VendorDefaultAuthList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.VendorDefaultAuthList" %>

<h4><asp:Label runat="server" ID="ServiceNameLabel" /></h4>

<div>
    <asp:Button runat="server" ID="SaveVendorDefaultAuthsButtonTop" Text="Save" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button runat="server" ID="UpdateVendorsWithDefaultsTop" Text="Update dealers" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Literal ID="UpdateStatusTop" runat="server" Text='' />
</div>

<asp:GridView runat="server" ID="VendorDefaultListGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="VendorDefaultListGridView_Sorting"
    OnRowCreated="VendorDefaultListGridView_RowCreated"
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <Columns>
        <asp:TemplateField SortExpression="IsAuthorized" ItemStyle-Width="120px" ItemStyle-CssClass="center">
            <HeaderStyle CssClass="center" />
            <HeaderTemplate><asp:CheckBox ID="chkAllActive" AutoPostBack="true" type="checkbox" runat="server" OnCheckedChanged="CheckAllCheckBox_CheckedChanged" />  <asp:LinkButton ID="LbSort" runat="server" CommandName="Sort" Text="Authorized" CommandArgument="IsAuthorized"  /></HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsAuthorized") %>' Enabled="true" AutoPostBack="true" OnCheckedChanged="IsActiveCheckBox_CheckedChanged" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Service Method" SortExpression="Name">
            <ItemTemplate>
                <asp:HiddenField ID="OperationId" runat="server" Value='<%# Eval("Id") %>' />
                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<div>
    <asp:Button runat="server" ID="SaveVendorDefaultAuthsButton" Text="Save" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button runat="server" ID="UpdateVendorsWithDefaults" Text="Update dealers" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Literal ID="UpdateStatus" runat="server" Text='' />
</div>

