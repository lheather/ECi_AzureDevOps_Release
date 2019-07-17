<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true" CodeBehind="AutoUpdateMgmt.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.AutoUpdateMgmt" %>

<%@ Register TagPrefix="eci" TagName="UpdatePackageList" Src="Components/UpdatePackageList.ascx" %>
<%@ Register TagPrefix="eci" TagName="UpdateDealers" Src="Components/UpdateDealers.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <script type="text/javascript">
        var selected_tab = 1;
        $(function () {
            var tabs = $("#tabs").tabs({
                select: function (e, i) {
                    selected_tab = i.index;
                }
            });
            selected_tab = $("[id$=selected_tab]").val() != "" ? parseInt($("[id$=selected_tab]").val()) : 0;
            tabs.tabs('select', selected_tab);
            $("form").submit(function () {
                $("[id$=selected_tab]").val(selected_tab);
            });
        });
    </script>
    <asp:HiddenField ID="selected_tab" runat="server" />

    <h2>ESN Auto-Update Management</h2>
    
    <div>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Package List</a></li>
                <li><a href="#tabs-2">Update Dealers</a></li>
            </ul>
            <div id="tabs-1">
                <eci:UpdatePackageList runat="server" ID="UpdatePackageListControl" />
            </div>
            <div id="tabs-2">
                <asp:Panel runat="server" ID="DealerVendorListPanel" Visible="true">
                    <eci:UpdateDealers runat="server" ID="UpdateDealersControl" />
                
                    <asp:Button runat="server" ID="RefreshVersion" Text="Refresh Version" OnClick="RefreshVersion_Click" />
                    <asp:Button runat="server" ID="DealerESNAutoUpdate" Text="Dealer ESN Auto Update" OnClick="DealerESNAutoUpdate_Click" />

                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
