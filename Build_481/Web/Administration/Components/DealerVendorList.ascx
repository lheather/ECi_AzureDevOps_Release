<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerVendorList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerVendorList" %>
<asp:GridView runat="server" ID="DealerVendorGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="DealerVendorGridView_Sorting"
    OnRowCreated="DealerVendorGridView_RowCreated"
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <Columns>
        <asp:TemplateField HeaderText="Vendor" SortExpression="Name">
            <ItemTemplate>
                <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Is Active" SortExpression="IsActive">
            <ItemTemplate>
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="EditHyperLink" Text="Edit" CommandName="EditVendor" CommandArgument='<%# Eval("VendorId") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="RemoveHyperLink" Text="Remove" CommandName="DeleteVendor" CommandArgument='<%# Eval("VendorId") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="ValidatePermissions" Text="Validate Permissions" CommandName="ValidatePermissions" CommandArgument='<%# Eval("VendorId")+";"+Eval("ERP_UserName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<div id="ValidateDealerVendorPermissionsDlg" style="display: none;"><p>Enter user name to validate:&nbsp;&nbsp; <input name="userName" type="text" id="DlgUserName" value="" size="30"></p></div>

<script type="text/javascript">
    function ValidateDealerVendorPermissions(internalVendorID, dealerID, forVendorID, userName, namesList) {
        var activeMethodNames = namesList.split(';');
        var dlgUserName = userName;
        
        $("#DlgUserName").val(userName);
        $("#ValidateDealerVendorPermissionsDlg").dialog({
            title: "Validate Permissions For User",
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
            close: function (event, ui) {
                $(this).dialog('destroy').remove()
            },
            buttons: {
                "Export to Excel": function () {
                    dlgUserName = $("#DlgUserName").val();
                    var handler = "../Handlers/ExportValidatedPermissionsHandler.ashx?VendorID=" + encodeURIComponent(internalVendorID) +
                                                                                    "&DealerID=" + encodeURIComponent(dealerID) +
                                                                                    "&ForVendorID=" + encodeURIComponent(forVendorID) +
                                                                                    "&UserName=" + encodeURIComponent(dlgUserName);
                    window.location.href = handler;
                    $(this).dialog("close");
                },

                "Permissions Summary": function () {
                    dlgUserName = $("#DlgUserName").val();
                    var data = { vendorId: internalVendorID, dealerId: dealerID, ForVendorID: forVendorID, username: dlgUserName, password: "xxxx", methodNames: activeMethodNames };
                    var dataString = JSON.stringify(data);
                    $("body").toggleClass("cursor-wait");
                    $.ajax({
                        url: "../WebServices/ESNWebService.asmx/ValidateVendorDealerPermissions",
                        type: "POST",
                        data: dataString,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        timeout: 10000,
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("body").toggleClass("cursor-wait");
                            alert("Failed: " + textStatus + " [" + errorThrown + "]!");
                            alert(jqXHR);
                        },
                        success: function (response) {
                            $("body").toggleClass("cursor-wait");
                            if (!response) {
                                alert("ValidateVendorDealerPermissions: no response was returned!");
                            }
                            var details = response.d;
                            var tbl =   "<div style='text-align: left;'>\n" +
                                        "\t<table>\n" +
                                        "\t\t<tr><th>Dealer &#91;" + dealerID + "&#93;</th></tr>\n" +
                                        "\t\t<tr><th>Vendor &#91;" + forVendorID + "&#93;</th></tr>\n" +
                                        "\t\t<tr><th>For User &#91;" + dlgUserName + "&#93;</th></tr>\n" +
                                        "\t\t<tr><th>Has all required permissions for all API methods: " + (details._hasAllPermissions ? "Yes" : "No") + "</th></tr>\n" +
                                        "\t</table>\n" +
                                        "</div>\n";

                            $(tbl).dialog({
                                title: "Dealer-Vendor-User API Method Permissions",
                                position: { my: "center", at: "center", of: window },
                                height: 'auto',
                                width: 'auto',
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
                                close: function (event, ui) {
                                    $(this).dialog('destroy').remove()
                                },
                                buttons: {
                                    "Done": function () {
                                        $(this).dialog("close");
                                    }
                                }
                            });
                        },
                        failure: function (response) {
                            $("body").toggleClass("cursor-wait");
                            alert("ValidateVendorDealerPermissions failed: " + response.d);
                        }
                    });

                    $(this).dialog("close");
                },
                "Cancel": function () {
                    $(this).dialog("close");
                }
            }
        });
    }
</script>