<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerList.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerList" %>
<div>
    <br />
    Filter by ERP System&nbsp;<asp:DropDownList ID="ddlERPFilter" AutoPostBack="true" OnSelectedIndexChanged="ddlERPFilter_SelectedIndexChanged" runat="server"/>
</div>
<asp:GridView runat="server" ID="DealerGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="DealerGridView_Sorting"
    OnRowCreated="DealerGridView_RowCreated" OnRowDataBound="DealerGridView_RowDataBound" 
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <Columns> 
        <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="chkRow" CssClass="chkRow" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Dealer ESN Id" SortExpression="Id">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Id" Text='<%# Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="Dealer Number" SortExpression="Number" DataField="Number" />
        <asp:TemplateField HeaderText="Dealer Name" SortExpression="Name">
            <ItemTemplate>
                <asp:HyperLink runat="server" Text='<%# string.IsNullOrEmpty(Eval("Name").ToString()) ? "More Info" : Eval("Name") %>' NavigateUrl='<%# "~/Administration/DealerInfo.aspx?did=" + Eval("Id") + "&tab=0" %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ERP System" SortExpression="ERPSystemID">
            <ItemTemplate>
                 <asp:Literal runat="server" Text='<%# Eval("ERPSystem.Name") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ERP Version" SortExpression="ERPVersionID">
            <ItemTemplate>
                 <asp:Literal runat="server" Text='<%# Eval("ERPVersion.Value") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="ESN Build" SortExpression="VER_ESNBuild" DataField="VER_ESNBuild" />
        <asp:TemplateField HeaderText="Is Active" SortExpression="IsActive">
            <ItemTemplate>
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>'
                    Enabled="false" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Pipeline Check">
            <ItemTemplate>
                <asp:HyperLink runat="server" Text='<%# CreateConnectivityLink(Eval("ERP_IPAddress"), Eval("ERP_Port")) %>' 
                    NavigateUrl='<%# CreateConnectivityLink(Eval("ERP_IPAddress"), Eval("ERP_Port")) %>' Target="_blank" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink runat="server" Text="D" NavigateUrl='<%# "~/Administration/DealerInfo.aspx?did=" + Eval("Id")  + "#tabs-1"%>' />
                &nbsp;&nbsp;
                <asp:HyperLink runat="server" Text="V" NavigateUrl='<%# "~/Administration/DealerInfo.aspx?did=" + Eval("Id")  + "#tabs-2"%>' />
                &nbsp;&nbsp;
                <asp:HyperLink runat="server" Text="U" NavigateUrl='<%# "~/Administration/DealerInfo.aspx?did=" + Eval("Id")  + "#tabs-3"%>' />
            </ItemTemplate>
        </asp:TemplateField>  
    </Columns>
</asp:GridView>
