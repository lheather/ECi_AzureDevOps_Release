<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="VendorDefaultAuths.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.VendorDefaultAuths" %>
<%@ Register TagPrefix="eci" TagName="VendorDefaultAuthList" Src="VendorDefaultAuthList.ascx" %>

<asp:UpdatePanel runat="server" ID="VendorDefaultAuthsPanel">
    <ContentTemplate>
        <div>
            <h4>Default Authorizations for <asp:Literal runat="server" ID="NameTextBox" /></h4>
            <p><eci:VendorDefaultAuthList runat="server" ID="VendorDefaultAuthListControl" /></p>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>