<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="PackageEdit.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.PackageEdit" %>

<%@ Register TagPrefix="eci" TagName="PackageEdit" Src="Components/PackageEdit.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>Uploading a New Package</h2>
    <hr />
    <div>
        <h3>
            New Package Information</h3>
        <div>
            <eci:PackageEdit runat="server" ID="PackageEditControl" />
        </div>
    </div>
    <hr />
    <div>
        <asp:Button runat="server" ID="SaveButton" Text="Save" />
        <asp:Button runat="server" ID="CancelButton" Text="Cancel" />
    </div>
</asp:Content>
