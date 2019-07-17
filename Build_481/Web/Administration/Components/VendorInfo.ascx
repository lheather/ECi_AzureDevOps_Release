<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="VendorInfo.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.VendorInfo" %>
<table>
    <tr>
        <td>
            <asp:Literal ID="VendorID" runat="server" Text="VendorId" />
        </td>
        <td>
            <asp:Literal runat="server" ID="IdTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="VendorName" runat="server" Text="Vendor Name" />
        </td>
        <td>
            <asp:Literal runat="server" ID="NameTextBox" />
        </td>
    </tr> 
    <tr>
        <td>
           
        </td>
        <td>
             <asp:CheckBox runat="server" Text="Excluded from activity log " ID="ExcludedFromActivityLog" Enabled="false" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="Address1" runat="server" Text="Address Line 1" />
        </td>
        <td>
            <asp:Literal runat="server" ID="AddressUnoTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="Address2" runat="server" Text="Address Line 2" />
        </td>
        <td>
            <asp:Literal runat="server" ID="AddressDosTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="City" runat="server" Text="City" />
        </td>
        <td>
            <asp:Literal runat="server" ID="CityTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="State" runat="server" Text="State" />
        </td>
        <td>
            <asp:Literal runat="server" ID="StateTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="Zip" runat="server" Text="Zip" />
        </td>
        <td>
            <asp:Literal runat="server" ID="PostalCodeTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="Country" runat="server" Text="Country" />
        </td>
        <td>
            <asp:Literal runat="server" ID="CountryTextBox" />
        </td>
    </tr>
</table>
