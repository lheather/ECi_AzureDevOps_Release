<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="VendorEdit.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.VendorEdit" %>

<%@ Register TagPrefix="eci" TagName="VendorEdit" Src="Components/VendorEdit.ascx" %>
<asp:Content ID="Content3" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Edit Vendor</h2>
    <hr />
    <div>
        <h3>
            Vendor Information</h3>
        <div>
            <eci:VendorEdit runat="server" ID="VendorEditControl" />
        </div>
    </div>
    <hr />
    <div>
        <asp:Button runat="server" ID="SaveButton" Text="Save" />
        <asp:Button runat="server" ID="CancelButton" Text="Cancel" />
    </div>
</asp:Content>
