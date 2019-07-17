<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerInfo.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerInfo" %>
<table>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Id" />
        </td>
        <td>
            <asp:Literal runat="server" ID="IdLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Is Active" />
        </td>
        <td>
            <asp:CheckBox runat="server" ID="IsActiveCheckBox" Enabled="false" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Dealer Number" />
        </td>
        <td>
            <asp:Literal runat="server" ID="NumberLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Dealer Name" />
        </td>
        <td>
            <asp:Literal runat="server" ID="NameLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Contact Name" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ContactName" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Contact Email" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ContactEmail" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Contact Phone" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ContactPhone" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Address Line 1" />
        </td>
        <td>
            <asp:Literal runat="server" ID="AddressUnoLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Address Line 2" />
        </td>
        <td>
            <asp:Literal runat="server" ID="AddressDosLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="City" />
        </td>
        <td>
            <asp:Literal runat="server" ID="CityLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="State" />
        </td>
        <td>
            <asp:Literal runat="server" ID="StateLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Zip" />
        </td>
        <td>
            <asp:Literal runat="server" ID="PostalCodeLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="Country" />
        </td>
        <td>
            <asp:Literal runat="server" ID="CountryLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP System" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPLabel" Text="OMD" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP Note" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPNote" Text="N/A" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP Id" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPIdLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP User Name" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPUserNameLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP Password" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPPasswordLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP IP Address" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPIPAddressLabel" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal runat="server" Text="ERP Port Number" />
        </td>
        <td>
            <asp:Literal runat="server" ID="ERPPortNumberLabel" />
        </td>
    </tr>
      <tr>
        <td>
            <asp:Literal  runat="server" Text="Allow Auto Update (eAuto only)" />
        </td>
        <td>
            <asp:CheckBox runat="server" ID="AllowAutoUpdate" Enabled="false" />
        </td>
    </tr>
</table>
