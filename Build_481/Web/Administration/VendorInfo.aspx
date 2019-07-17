<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="VendorInfo.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.VendorInfo" %>

<%@ Register TagPrefix="eci" TagName="VendorInfo" Src="Components/VendorInfo.ascx" %>
<%@ Register TagPrefix="eci" TagName="VendorDefaultAuths" Src="Components/VendorDefaultAuths.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">

    <script type="text/javascript">
        $(function () {
            $('#tabs').tabs();
        });
    </script>

    <h2><asp:Label ID="VendorName" runat="server" /></h2>
    <h4>Information below is confidential and proprietary. Do not share.</h4>
    <div>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Vendor Information</a></li>
                <li><a href="#tabs-2">Default Authorizations</a></li>
            </ul>
            <div id="tabs-1">
                <p>
                    <div>
                        <eci:VendorInfo runat="server" ID="VendorInfoControl" />
                    </div>
                    <div>
                        <asp:HyperLink runat="server" ID="VendorEditHyperLink" Text="Edit Vendor" />
                    </div>
                </p>
            </div>
            <div id="tabs-2">
                <div><eci:VendorDefaultAuths runat="server" ID="VendorDefaultAuthsControl" /></div>
            </div>
        </div>
    </div>
</asp:Content>
