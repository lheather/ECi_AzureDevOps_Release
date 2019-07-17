<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="PackageEdit.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.PackageEdit" %>
<h3>New Package Edit Details</h3>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="File name" AssociatedControlID="FileNameTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="FileNameTextBox" ReadOnly="true" BackColor="PaleTurquoise" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="ESN Build"  AssociatedControlID="BuildNumberTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="BuildNumberTextBox"  ReadOnly="true" BackColor="PaleTurquoise" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="When uploaded" AssociatedControlID="UploadedTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="UploadedTextBox" ReadOnly="true" BackColor="PaleTurquoise" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="ERP system" AssociatedControlID="ERPSystem" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPSystem" ReadOnly="true" BackColor="PaleTurquoise" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="ERP Version" AssociatedControlID="ERPVersion" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPVersion" ReadOnly="true" BackColor="PaleTurquoise" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Package ID" AssociatedControlID="PackageIDTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="PackageIDTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Min. ERP schema" AssociatedControlID="MinSchemaTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="MinSchemaTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Is Active" AssociatedControlID="IsActiveCheckBox" />
        </td>
        <td>
            <asp:CheckBox runat="server" ID="IsActiveCheckBox" />
        </td>
    </tr>
</table>
