<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ActivityLogList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.ActivityLogList" %>

<div>
    <br />
    <asp:Button runat="server" ID="refreshActivities" OnClick="RefreshActivities_Click" Text="Refresh Activities List" />
    &nbsp;&nbsp;
    <asp:DropDownList ID="ActivityGridPageSize" AutoPostBack="true" OnSelectedIndexChanged="ActivityPageSize_Changed" runat="server"/>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="TotalActivityLabel" runat="server" Text="Total activity count: " />
    <asp:Label ID="TotalActivityCount" runat="server" Text="total" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="AverageDailyLabel" runat="server" Text="Average activity per calendar day: " />
    <asp:Label ID="AverageDailyCount" runat="server" Text="average" />
    <br /><br />
    Filter by:
    Activity type&nbsp;<asp:DropDownList ID="logFilterType" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;
    Request date&nbsp;<asp:DropDownList ID="requestDateFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;
    ERP name&nbsp;<asp:DropDownList ID="ERPFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;
    Method name&nbsp;<asp:DropDownList ID="methodNameFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;
    Vendor&nbsp;<asp:DropDownList ID="vendorFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    &nbsp;&nbsp;
    Dealer&nbsp;<asp:DropDownList ID="dealerFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
    <!-- &nbsp;&nbsp;
    Status&nbsp;<asp:DropDownList ID="statusFilter" AutoPostBack="true" OnSelectedIndexChanged="anyFilterType_SelectedIndexChanged" runat="server"/> -->
    <br /><br />
    <p>
        The last query involved <asp:Label ID="LastBaseQuerySize" runat="server" Text="record count" /> records; the larger this number, the longer a text scan of the Request or Response values will take.
        <br />
        The last query took <asp:Label ID="LastQueryElapsedTime" runat="server" Text="record count" />
    </p>
    Request contains <asp:TextBox ID="requestfilter" columns="32" AutoPostBack="true" OnTextChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
     &nbsp;&nbsp;Response contains <asp:TextBox ID="responseFilter" columns="32" AutoPostBack="true" OnTextChanged="anyFilterType_SelectedIndexChanged" runat="server"/>
</div>
<asp:GridView runat="server" ID="ActivityLogGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="ActivityLogGridView_Sorting"
    OnRowCreated="ActivityLogGridView_RowCreated" OnRowDataBound="ActivityLogGridView_RowDataBound"
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <PagerSettings   Mode="NumericFirstLast" PageButtonCount="8"  FirstPageText="First" LastPageText="Last" />
    <Columns> 
        <asp:TemplateField HeaderText="ActivityID" SortExpression="ActivityID">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ActivityID" Text='<%# Eval("ActivityID") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ActivityType" SortExpression="ActivityType">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ActivityType" Text='<%# Eval("ActivityType") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ServiceName" SortExpression="ServiceName">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ServiceName" Text='<%# Eval("ServiceName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="RequestTime" SortExpression="RequestTime">
            <ItemTemplate>
                <asp:Literal runat="server" ID="RequestTime" Text='<%# Eval("RequestTime", "{0:dd-MMM-yyyy HH:mm:ss}") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="TimeTaken" SortExpression="TimeTaken">
            <ItemTemplate>
                <asp:Literal runat="server" ID="TimeTaken" Text='<%# Eval("TimeTaken") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ERP" SortExpression="ERP">
            <ItemTemplate>
                <asp:Literal runat="server" ID="ERP" Text='<%# Eval("ERP") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="MethodName" SortExpression="MethodName">
            <ItemTemplate>
                <asp:Literal runat="server" ID="MethodName" Text='<%# Eval("MethodName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Vendor" SortExpression="VendorName">
            <ItemTemplate>
                <asp:Literal runat="server" ID="VendorName" Text='<%# Eval("VendorName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Dealer" SortExpression="DealerName">
            <ItemTemplate>
                <asp:Literal runat="server" ID="DealerName" Text='<%# Eval("DealerName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Request" SortExpression="Request">
            <ItemTemplate>
                <asp:LinkButton runat="server" Text="Request" OnClientClick='<%# String.Format("return ShowRequestResponseText(\"{0}\", \"{1}\")", "ActivityRequest", Eval("ActivityID")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Response" SortExpression="Response">
            <ItemTemplate>
                <asp:LinkButton runat="server" Text="Response" OnClientClick='<%# String.Format("return ShowRequestResponseText(\"{0}\", \"{1}\")", "ActivityResponse", Eval("ActivityID")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<div class="center">
    <asp:Button runat="server" ID="PrevPage" OnClick="PreviousActivityPage_Click" Text="Previous" />
    &nbsp;&nbsp;
    Page <%=ActivityPageNumber%> of <%=ActivityPageCount%>
    &nbsp;&nbsp;
    <asp:Button runat="server" ID="NextPage" OnClick="NextActivityPage_Click" Text="Next" />
</div>

<script type="text/javascript">
    function ShowRequestResponseText(source, activityID) {
        $.ajax({
            type: "POST",
            url: "../WebServices/ESNWebService.asmx/Get" + source + "Text",
            data: '{activityID: ' + activityID + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "XML",
            success: function (response) {
                $("<div><pre>" + String(response) + "</pre></div>").dialog({
                    title: source,
                    position: { my: "center", at: "center", of: window },
                    width: 600,
                    resizable: true,
                    modal: true,
                    show: {
                        effect: "fade",
                        duration: 800,
                    },
                    hide: {
                        effect: "fade",
                        duration: 800
                    },
                    buttons: {
                        "Ok": function () {
                            $(this).dialog("close");
                        }
                    }
                });
            },
            failure: function (response) {
                alert("ShowRequestText failed: " + response.d);
            }
        });

        return false;
    }
</script>