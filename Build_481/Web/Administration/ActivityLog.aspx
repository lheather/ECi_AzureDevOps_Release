<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true" CodeBehind="ActivityLog.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.ActivityLog" %>

<%@ Register TagPrefix="eci" TagName="ActivityLogList" Src="Components/ActivityLogList.ascx" %>
<%@ Register TagPrefix="eci" TagName="UpdateDealersLogList" Src="Components/UpdateDealersLogList.ascx" %>
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
              $("a").click(function () {
                  $("[id$=selected_tab]").val(selected_tab);
              });
          });
    </script>
    <asp:HiddenField ID="selected_tab" runat="server" />

    <h2>Activity Log</h2>
    <h4>Information below is confidential and proprietary. Do not share.</h4>
    <hr />
     <div>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">ESN Activity Log</a></li>
                <li><a href="#tabs-2">Update Dealers Log</a></li>
            </ul>
            <div id="tabs-1">
                <eci:ActivityLogList runat="server" ID="ActivityLogListControl" />
            </div>
            <div id="tabs-2">
                <eci:UpdateDealersLogList runat="server" ID="UpdateDealersLogListControl" />
            </div>
    </div>
</asp:Content>
