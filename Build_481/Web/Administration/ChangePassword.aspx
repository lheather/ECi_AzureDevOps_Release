<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Administration/Admin.Master"
    CodeBehind="ChangePassword.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.ChangePassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Change Password</h2>
    <div>
        <asp:ChangePassword runat="server" ContinueDestinationPageUrl="~/Administration">
        </asp:ChangePassword>
    </div>
</asp:Content>
