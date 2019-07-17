<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="VendorList.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.VendorList" %>
<asp:GridView runat="server" ID="VendorGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="VendorGridView_Sorting"
    OnRowCreated="GridView_RowCreated" OnRowDataBound="VendorGridView_RowDataBound" 
    CssClass="Grid NestingGrid" AlternatingRowStyle-CssClass="alt">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="Expand" data-id='<%# Eval("Id") %>' CssClass="RowExpand Plus" style="cursor: pointer" Text="+" runat="server" />
                <asp:CheckBox ID="chkRow" CssClass="chkRow" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Vendor Name" SortExpression="Name">
            <ItemTemplate>
                <asp:HyperLink runat="server" Text='<%# Eval("Name") %>'  ID="EditHyperLink" NavigateUrl='<%# "~/Administration/VendorInfo.aspx?vid=" + Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Vendor ESN Id" SortExpression="Id">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Id" Text='<%# Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <tr class="NestedGrid" style="display: none;">
                    <td></td>
                    <td colspan="3">
                        <div id='div<%# Eval("ID") %>' style="position: relative; overflow: auto">
                            <asp:GridView runat="server" ID="DealerGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="DealerGridView_Sorting"
                                OnRowCreated="GridView_RowCreated" 
                                CssClass="Grid InnerGrid" AlternatingRowStyle-CssClass="alt">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Dealer Name" SortExpression="Name">
                                        <ItemTemplate>
                                            <asp:HyperLink runat="server" Text='<%# Eval("Name") %>' NavigateUrl='<%# "~/Administration/DealerInfo.aspx?did=" + Eval("Id") + "&tab=0" %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Dealer ESN Id" SortExpression="Id">
                                        <ItemTemplate>
                                            <asp:Literal runat="server" ID="Id" Text='<%# Eval("Id") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ERP System" SortExpression="ERPSystem.Name">
                                        <ItemTemplate>
                                             <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ERPSystem.Name") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ERP Version" SortExpression="ERPVersion.Value">
                                        <ItemTemplate>
                                             <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("ERPVersion.Value") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ESN Build" SortExpression="VER_ESNBuild">
                                        <ItemTemplate>
                                             <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("VER_ESNBuild") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                                </Columns>
                            </asp:GridView>
                        </div>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<script type="text/javascript">

    $(document).ready(function () {         

        var isPostBack = "<%=(Page.IsPostBack).ToString().ToLower()%>" === "true";

        if (isPostBack) {
            restoreExpandedRows();
        }
        else {
            setExpandedRows(new Array());
        }

        $(".Plus").click(function () {
            addExpandedRow($(this).data('id'));

            toggleNextedGridRow($(this), true);           
        });
        $(".Minus").click(function () {
            removeExpandedRow($(this).data('id'));

            toggleNextedGridRow($(this), false);            
        });
    });

    function toggleNextedGridRow(expand, isExpanded) {
        var parentRow = expand.closest("tr");
        var nextRow = parentRow.next("tr");
        nextRow.toggle();
        if (parentRow.hasClass('alt')) {
            nextRow.addClass('alt');
        }

        if (isExpanded) {
            expand.removeClass('Plus').addClass('Minus');
            expand.text('-');
        }
        else {
            expand.removeClass('Minus').addClass('Plus');
            expand.text('+');
        }
        //http://www.aspsnippets.com/Articles/Nested-GridView-Example-in-ASPNet-using-C-and-VBNet.aspx
        //http://www.aspdotnet-suresh.com/2012/05/gridview-with-in-gridview-or-nested.html
    }

    function restoreExpandedRows()
    {
        var expandedRows = getExpandedRows();

        $.each(expandedRows, function (index, value) {
            var expand = $('*[data-id="' + value + '"]');
            toggleNextedGridRow(expand, true);
        });
    }

    function addExpandedRow(value) {

        var expandedRows = getExpandedRows();
        
        expandedRows.push(value);

        setExpandedRows(expandedRows);
    }

    function removeExpandedRow(value) {
        var expandedRows = getExpandedRows();

        for (var i = 0; i < expandedRows.length; i++) {
            if (expandedRows[i] === value) {
                delete expandedRows[i];
                setExpandedRows(expandedRows);
                return;
            }
        }
    }

    function getExpandedRows() {
        var expandedRows = localStorage.getItem('vendorExpandedRows');
        if (expandedRows != null) {
            expandedRows = JSON.parse(expandedRows);
        } else {
            expandedRows = new Array();
        }

        return expandedRows;
    }

    function setExpandedRows(expandedRows) {
        localStorage.setItem('vendorExpandedRows', JSON.stringify(expandedRows));
    }
</script>

