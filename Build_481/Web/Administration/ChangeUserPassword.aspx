<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administration/Admin.Master" CodeBehind="ChangeUserPassword.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.ChangeUserPassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Change Password for: <asp:Label ID="UserName" runat="server" />
    </h2>
    <asp:Label ID="NotificationText" runat="server" style="color: red;" Text="" Visible="false" />
    </div>
    <div>
        <table cellspacing="0" cellpadding="1" border="0" style="border-collapse:collapse;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="New Password" AssociatedControlID="NewPasswordBox" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NewPasswordBox" TextMode="Password" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Confirm New Password" AssociatedControlID="ConfirmNewPasswordBox" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="ConfirmNewPasswordBox" TextMode="Password" />
                </td>
            </tr>
        </table>
    </div>
    <hr />
    <div>
        <asp:Button runat="server" ID="ChangePassword" Text="Change Password" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="CancelButton" Text="Cancel" />
    </div>
</asp:Content>
