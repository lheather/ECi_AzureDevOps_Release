<%@ Page Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true" CodeBehind="CreateNewUser.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.CreateNewUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>Create New User</h2>
    <hr />
   <div>
        <asp:CreateUserWizard ID="UserWizard" runat="server" LoginCreatedUser="false" RequireEmail="true" ContinueDestinationPageUrl="~/Administration/Users.aspx" OnCreatedUser="UserWizard_CreatedUser">
            <WizardSteps>
                <asp:WizardStep ID="CreateUserWizardStep0" runat="server">
                     <table border="0" style="font-size: 100%; font-family: Verdana" id="TABLE1" >
                          <tr>
                              <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                                  Select a Role</td>
                          </tr>
                          <tr>
                              <td>
                                <asp:Label ID="RoleLabel" runat="server" AssociatedControlID="RoleDropDownList" > 
                                  Role:</asp:Label>                               
                                <asp:DropDownList ID="RoleDropDownList" AutoPostBack="false" runat="server"/>                                  
                              </td>
                          </tr>
                      </table>
                </asp:WizardStep>
                <asp:CreateUserWizardStep ID="UserWizardCreate" Title="New User Login" runat="server" />
                <asp:CompleteWizardStep ID="UserWizardComplete" runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</asp:Content>