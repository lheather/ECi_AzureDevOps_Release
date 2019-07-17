<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administration/Admin.Master" CodeBehind="EditUser.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.EditUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Edit User: <asp:Label ID="UserName" runat="server" />
    </h2>
    <div>
    <asp:Label ID="NotificationText" runat="server" style="color: red;" Text="" Visible="false" />
    </div>
    <div>
        <table cellspacing="0" cellpadding="1" border="0" style="border-collapse:collapse;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Email" AssociatedControlID="EmailTextBox" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="EmailTextBox" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Role" AssociatedControlID="RoleDropDownList" />
                </td>
                <td>
                    <asp:DropDownList ID="RoleDropDownList" AutoPostBack="false" runat="server"/>    
                    <asp:HiddenField ID="CurrentRole" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    <hr />
    <div>
        <asp:Button runat="server" ID="SaveButton" Text="Save" OnClick="SaveButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="CancelButton" Text="Cancel" OnClick="CancelButton_Click" />
    </div>
</asp:Content>
