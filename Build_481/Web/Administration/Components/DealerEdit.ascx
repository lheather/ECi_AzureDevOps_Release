<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerEdit.ascx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerEdit" %>
<table>
    <tr>
        <td>
            <asp:Label runat="server" Text="Id" AssociatedControlID="IdTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="IdTextBox" ReadOnly="true" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Is Active" AssociatedControlID="IsActiveCheckBox" />
        </td>
        <td>
            <asp:CheckBox runat="server" ID="IsActiveCheckBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Dealer Number"  AssociatedControlID="NumberTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="NumberTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Dealer Name" AssociatedControlID="NameTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="NameTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Contact Name" AssociatedControlID="ContactNameTextBox"/>
        </td>
        <td>
            <asp:TextBox runat="server" ID="ContactNameTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Contact Email"  AssociatedControlID="ContactEmailTextBox"/>
        </td>
        <td>
            <asp:TextBox runat="server" ID="ContactEmailTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="Contact Phone" AssociatedControlID="ContactPhoneTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ContactPhoneTextBox" />
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
            <asp:Label ID="Label1" runat="server" Text="State" AssociatedControlID="StateTextBox" />
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
    <tr>
        <td>
            <asp:Label runat="server" Text="ERP System" AssociatedControlID="ERPSystem" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPSystem" ReadOnly="true" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="Literal1" runat="server" Text="ERP Note" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPNote" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="ERP Id" AssociatedControlID="ERPIdTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPIdTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="ERP User Name" AssociatedControlID="ERPUserNameTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPUserNameTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="ERP Password" AssociatedControlID="ERPPasswordTextBox" />
        </td>
        <td>
            <asp:CheckBox runat="server" Text="Change to: " ID="ERPPasswordChange" /><asp:TextBox runat="server" ID="ERPPasswordTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="ERP IP Address" AssociatedControlID="ERPIPAddressTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPIPAddressTextBox" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label runat="server" Text="ERP Port Number" AssociatedControlID="ERPPortNumberTextBox" />
        </td>
        <td>
            <asp:TextBox runat="server" ID="ERPPortNumberTextBox" />
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label runat="server" Text="Allow Auto Update (eAuto only)" AssociatedControlID="AllowAutoUpdate" />
        </td>
        <td>
            <asp:CheckBox runat="server" ID="AllowAutoUpdate" />
        </td>
    </tr>
</table>
