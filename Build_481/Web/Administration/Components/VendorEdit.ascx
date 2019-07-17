<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="VendorEdit.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.VendorEdit" %>
<table>
    <tr>
        <td>
            <asp:Label runat="server" Text="Vendor Id" AssociatedControlID="IdTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="IdTextBox" ReadOnly="true" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Vendor Name" AssociatedControlID="NameTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="NameTextBox" />
        </td>
    </tr>
     <tr>
        <td>
           
        </td>
        <td>
             <asp:CheckBox runat="server" Text="Excluded from activity log " ID="ExcludedFromActivityLog" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Address Line 1" AssociatedControlID="AddressUnoTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="AddressUnoTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Address Line 2" AssociatedControlID="AddressDosTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="AddressDosTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="City" AssociatedControlID="CityTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="CityTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="State" AssociatedControlID="StateTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="StateTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Zip" AssociatedControlID="PostalCodeTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="PostalCodeTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Country" AssociatedControlID="CountryTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="CountryTextBox" />
        </td>
    </tr>
</table>
