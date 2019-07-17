<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdatePackageList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.UpdatePackageList" %>

<div>
    <div style="background-color: orange; display: inline-block; height:20px; margin-bottom: 20px;">
        <% = this.ServerMessage %><% = this.MessageFromServer %>
    </div>
    <br />
    <div style="float: left;">
        <asp:Button runat="server" ID="refreshPackages" OnClick="RefreshPackages_Click" Text="Refresh Activities List" />
        &nbsp;&nbsp;
        Page size: <asp:DropDownList ID="PackagesGridPageSize" AutoPostBack="true" OnSelectedIndexChanged="PackagesPageSize_Changed" runat="server"/>
    </div>
    <div style="float: right;">
        New package:
        <input type="file" id="NewPackage" runat="Server" />
        &nbsp;&nbsp;
        <asp:Button runat="server" ID="UploadNewPackage" OnClick="UploadNewPackage_Click" Text="Upload" />
    </div>
    <br /><br />
    <div style="clear: both;">
        Filter by:
        Package is active&nbsp;<asp:DropDownList ID="activeFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
        &nbsp;&nbsp;
        ERP system&nbsp;<asp:DropDownList ID="ERPFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    </div>
</div>
<asp:GridView runat="server" ID="PackagesGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="PackagesGridView_Sorting"
    OnRowCreated="PackagesGridView_RowCreated" OnRowDataBound="PackagesGridView_RowDataBound"
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <PagerSettings   Mode="NumericFirstLast" PageButtonCount="8"  FirstPageText="First" LastPageText="Last" />
    <Columns> 
        <asp:TemplateField HeaderText="Update ID" SortExpression="UpdateID">
            <ItemTemplate>
                <asp:Literal runat="server" ID="UpdateID" Text='<%# Eval("UpdateID") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="File name" SortExpression="FileName">
            <ItemTemplate>
                <asp:Literal runat="server" ID="FileName" Text='<%# Eval("FileName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
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
        <asp:TemplateField HeaderText="Is Active" SortExpression="IsActive">
            <ItemTemplate>
                <asp:Literal runat="server" ID="IsActive" Text='<%# Eval("IsActive")%>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ERP" SortExpression="ERPVersion.ERPSystem.Name">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ERP" Text='<%# Eval("ERPVersion.ERPSystem.Name") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ERP Version" SortExpression="ERPVersion.Value">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ERPVersion" Text='<%# Eval("ERPVersion.Value") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Min. ERP Schema" SortExpression="MinERPSchemaVersion">
            <ItemTemplate>
                <asp:Literal runat="server" ID="MinERPSchemaVersion" Text='<%# Eval("MinERPSchemaVersion") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit" NavigateUrl='<%# "~/Administration/PackageEdit.aspx?updateID=" + Eval("UpdateID") %>' />

            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<div class="center">
    <asp:Button runat="server" ID="PrevPage" OnClick="PreviousPackagesPage_Click" Text="Previous" />
    &nbsp;&nbsp;
    Page <%=PackagePageNumber%> of <%=PackagePageCount%>
    &nbsp;&nbsp;
    <asp:Button runat="server" ID="NextPage" OnClick="NextPackagesPage_Click" Text="Next" />
</div>
