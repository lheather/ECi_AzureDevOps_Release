<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="DealerInfo.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.DealerInfo" %>

<%@ Register TagPrefix="eci" TagName="DealerInfo" Src="Components/DealerInfo.ascx" %>
<%@ Register TagPrefix="eci" TagName="DealerVendorList" Src="Components/DealerVendorList.ascx" %>
<%@ Register TagPrefix="eci" TagName="DealerVendorEdit" Src="Components/DealerVendorEdit.ascx" %>
<%@ Register TagPrefix="eci" TagName="DealerUpdate" Src="Components/DealerUpdate.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">

    <script type="text/javascript">
        $(function () {
            $('#tabs').tabs();
        });
    </script>

    <h2><asp:Label ID="DealerName" runat="server" /></h2>
    <h4>Information below is confidential and proprietary. Do not share with anyone EXCEPT the dealer.</h4>
    <div>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Dealer Information</a></li>
                <li><a href="#tabs-2">Vendor Authorization</a></li>
                <li><a href="#tabs-3">ESN Updates</a></li>
            </ul>
            <div id="tabs-1">
                <p>
                    <div>
                        <eci:DealerInfo runat="server" ID="DealerEditControl" />
                    </div>
                    <div>
                        <asp:HyperLink runat="server" ID="DealerEditHyperLink" Text="Edit Dealer" NavigateUrl="~/Administration/DealerEdit.aspx?did={0}" />
                    </div>
                </p>
            </div>
            <div id="tabs-2">
                <p>
                    <asp:UpdatePanel runat="server" ID="DealerVendorUpdatePanel">
                        <ContentTemplate>
                            <asp:Panel runat="server" ID="DealerVendorListPanel" Visible="true">
                                <h3>
                                    Vendors</h3>
                                <p>
                                    <div>
                                        <eci:DealerVendorList runat="server" ID="DealerVendorListControl" />
                                    </div>
                                    <div>
                                         <asp:DropDownList runat="server" ID="VendorDropDownList" DataTextField="Name" DataValueField="Id" />&nbsp;<asp:LinkButton runat="server" ID="AddVendorLinkButton" Text="Add Vendor" />
                                    </div>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                </p>
                            </asp:Panel>
                            <hr />
                            <br />
                            <asp:Panel runat="server" ID="DealerVendorEditPanel" Visible="false">
                                 <div>
                                    <asp:Button runat="server" ID="SaveVendorEditButtonTop" Text="Save" />
                                    <asp:Button runat="server" ID="CancelVendorEditButtonTop" Text="Cancel" />
                                </div>
                                <p>
                                    <eci:DealerVendorEdit runat="server" ID="DealerVendorEditControl" />
                                </p>
                                <div>
                                    <asp:Button runat="server" ID="SaveVendorEditButton" Text="Save" />
                                    <asp:Button runat="server" ID="CancelVendorEditButton" Text="Cancel" />
                                </div>
                                <hr />
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </p>
            </div>
            <div id="tabs-3">
                <eci:DealerUpdate runat="server" ID="DealerUpdateControl" />
            </div>
        </div>
    </div>
</asp:Content>
