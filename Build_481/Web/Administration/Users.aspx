<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="Users.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Users" %>

<%@ Register TagPrefix="eci" TagName="UserList" Src="Components/UserList.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Manage Users</h2>
    <hr />
    <div>
        <h3>
            User List</h3>
        <div>
            <div>
                <asp:HyperLink runat="server" ID="CreateNewUserTop" NavigateUrl="~/Administration/CreateNewUser.aspx" Text="Create New User" />
            </div>
            <div>
                <eci:UserList runat="server" ID="UserListControl" />
            </div>
            <div>
                <asp:HyperLink runat="server" ID="CreateNewUser" NavigateUrl="~/Administration/CreateNewUser.aspx" Text="Create New User" />
        </div>
    </div>
</asp:Content>
