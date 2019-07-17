<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerUpdateList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerUpdateList" %>
<asp:GridView runat="server" ID="DealerUpdateGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="DealerUpdateGridView_Sorting" OnRowCreated="DealerUpdateGridView_RowCreated" CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <Columns>
        <asp:TemplateField HeaderText="Package ID" SortExpression="PackageID">
            <ItemTemplate>
                <asp:Literal runat="server" ID="PackageID" Text='<%# Eval("PackageID") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ESN build" SortExpression="ESNBuild">
            <ItemTemplate>
                <asp:Literal runat="server" ID="BuildID" Text='<%# Eval("ESNBuild") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Uploaded" SortExpression="Uploaded">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Uploaded" Text='<%# Eval("Uploaded", "{0:dd-MMM-yyyy HH:mm:ss}") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Min. ERP Schema" SortExpression="MinERPSchemaVersion">
            <ItemTemplate>
                <asp:Literal runat="server" ID="MinERPSchemaVersion" Text='<%# Eval("MinERPSchemaVersion") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton runat="server" Text="Update" OnCommand="Update_Click" CommandArgument='<%# Eval("PackageID") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

