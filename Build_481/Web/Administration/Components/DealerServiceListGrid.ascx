<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DealerServiceListGrid.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerServiceListGrid" %>
<br />
<h4><asp:Label runat="server" ID="ServiceNameLabel" /></h4>
<asp:GridView runat="server" ID="DealerServiceGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="DealerServiceGridView_Sorting"
    OnRowCreated="DealerServiceGridView_RowCreated"
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
                <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
