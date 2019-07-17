<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="UserList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.UserList" %>
<asp:GridView runat="server" ID="UserGridView" AutoGenerateColumns="false" AllowSorting="false" OnRowCreated="GridView_RowCreated" CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <Columns>
        <asp:TemplateField HeaderText="User name" SortExpression="Username">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Username" Text='<%# Eval("UserName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Role" SortExpression="Role">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Role" Text='<%# Eval("Role") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email" SortExpression="Email">
            <ItemTemplate>
                <asp:Literal runat="server" ID="Email" Text='<%# Eval("Email") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Enabled" SortExpression="IsApproved">
            <ItemTemplate>
                <asp:Literal runat="server" ID="IsApproved" Text='<%# Eval("IsApproved") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="LockedOut" SortExpression="IsLockedOut">
            <ItemTemplate>
                <asp:Literal runat="server" ID="IsLockedOut" Text='<%# Eval("IsLockedOut") %>'/>
                <div id="UnlockUserDiv" runat="server" visible="false">
                    <asp:LinkButton runat="server" ID="UnlockUser" Text="Unlock" OnClientClick="if(!confirm('Are you sure you wish to unlock this user?')) return false;" CommandName="UnlockUser" CommandArgument='<%# Eval("UserName") %>'/>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Online" SortExpression="IsOnline">
            <ItemTemplate>
                <asp:Literal runat="server" ID="IsOnline" Text='<%# Eval("IsOnline") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="DeleteUser" Text="Delete" OnClientClick="if(!confirm('Are you sure you wish to delete this user?')) return false;" CommandName="DeleteUser" CommandArgument='<%# Eval("UserName") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="ChangeUserPassword" runat="server" Text="Change Password" NavigateUrl='<%# "~/Administration/ChangeUserPassword.aspx?UserName=" + Eval("UserName") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="EditUser" runat="server" Text="Edit" NavigateUrl='<%# "~/Administration/EditUser.aspx?UserName=" + Eval("UserName") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
