<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="APITransactionList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.APITransactionList" %>

<div>
    <br />
    <asp:Button runat="server" ID="refreshTransactions" OnClick="RefreshTransactions_Click" Text="Refresh API Transactions List" />
    &nbsp;&nbsp;
    <asp:DropDownList ID="APITransGridPageSize" AutoPostBack="true" OnSelectedIndexChanged="APITransGridPageSize_Changed" runat="server"/>
    <br /><br />
    <asp:Label ID="OldestPeriod" runat="server" Text="Oldest period: " />
    &nbsp;&nbsp;
    <asp:Label ID="LatestPeriod" runat="server" Text="Latest period: " />
    &nbsp;&nbsp;
    <asp:Label ID="TotalTransactionCount" runat="server" Text="Total transactions: " />
    &nbsp;&nbsp;
    <asp:Label ID="VendorCount" runat="server" Text="Total vendors: " />
    &nbsp;&nbsp;
    <asp:Label ID="DealerCount" runat="server" Text="Total dealers:" />
    <br /><br />
    Filter by:
    Year: &nbsp;<asp:DropDownList ID="yearFilterList" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;
    Month: &nbsp;<asp:DropDownList ID="monthFilterList" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="ExportTransactionSummary" runat="server" NavigateUrl="~/Handlers/ExportAPITransactionsHandler.ashx?MODE=0&forYear=0&forMonth=0">Export transaction summary</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="ExportTransactionDetails" runat="server" NavigateUrl="~/Handlers/ExportAPITransactionsHandler.ashx?MODE=1&forYear=0&forMonth=0">Export transaction details</asp:HyperLink>
</div>
<div id="XXXX" runat="server">
<asp:GridView runat="server" ID="APITransGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="APITransGridView_Sorting"
    OnRowCreated="APITransGridView_RowCreated" OnRowDataBound="APITransGridView_RowDataBound"
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <PagerSettings   Mode="NumericFirstLast" PageButtonCount="8"  FirstPageText="First" LastPageText="Last" />
    <Columns> 
        <asp:TemplateField HeaderText="Year" SortExpression="Year">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Year" Text='<%# Eval("Year") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Month" SortExpression="Month">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Month" Text='<%# Eval("Month") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Vendor ID" SortExpression="VendorID">
            <ItemTemplate>
                <asp:Literal runat="server" ID="VendorID" Text='<%# Eval("VendorID") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Vendor" SortExpression="VendorName">
            <ItemTemplate>
                <asp:Literal runat="server" ID="VendorName" Text='<%# Eval("VendorName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Total Customers" SortExpression="TotalCustomers">
            <ItemTemplate>
                <asp:Literal runat="server" ID="TotalCustomers" Text='<%# Eval("TotalCustomers") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Total Transactions" SortExpression="TotalTransactions">
            <ItemTemplate>
                <asp:Literal runat="server" ID="TotalTransactions" Text='<%# Eval("TotalTransactions") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Active Customers" SortExpression="ActiveCustomers">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ActiveCustomers" Text='<%# Eval("ActiveCustomers") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Inactive Customers" SortExpression="InactiveCustomers">
            <ItemTemplate>
                <asp:Literal runat="server" ID="InactiveCustomers" Text='<%# Eval("InactiveCustomers") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</div>
<div class="center">
    <asp:Button runat="server" ID="PrevPage" OnClick="PreviousAPITransPage_Click" Text="Previous" />
    &nbsp;&nbsp;
    Page <%=APITransPageNumber%> of <%=APITransPageCount%>
    &nbsp;&nbsp;
    <asp:Button runat="server" ID="NextPage" OnClick="NextAPITransPage_Click" Text="Next" />
</div>
