<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="Vendors.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Vendors" %>

<%@ Register TagPrefix="eci" TagName="VendorList" Src="Components/VendorList.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Edit Vendors</h2>
    <hr />
    <div>
        <h3>
            Vendor List
        </h3>
        <h4>Information below is confidential and proprietary. Do not share.</h4>
        <div>
            <div>
                <asp:HyperLink runat="server" ID="AddHyperLinkTop" Text="Add New Vendor" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton runat="server" ID="lnkDeleteVendorsTop" Text="Delete Vendors" style="display:none;" />
            </div>
            <div>
                <eci:VendorList runat="server" ID="VendorListControl" />
            </div>
            <div>
                <asp:HyperLink runat="server" ID="AddHyperLink" Text="Add New Vendor" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton runat="server" ID="lnkDeleteVendors" Text="Delete Vendors" style="display:none;" />
            </div>
        </div>
    </div>
</asp:Content>
