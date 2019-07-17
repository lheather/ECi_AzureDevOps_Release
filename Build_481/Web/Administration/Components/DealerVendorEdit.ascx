<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerVendorEdit.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerVendorEdit" %>
<%@ Reference Control="DealerServiceListGrid.ascx" %>
<h3><asp:Label runat="server" ID="VendorNameLabel" /></h3>
<div>
    <asp:CheckBox runat="server" ID="IsActiveCheckBox" />&nbsp;<asp:Label runat="server" Text="Is Active" AssociatedControlID="IsActiveCheckBox" />
</div>

<div>
    <asp:PlaceHolder ID="DealerServiceGridPlaceHolder" runat="server" />
</div>
