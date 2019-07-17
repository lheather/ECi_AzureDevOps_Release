<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DealerUpdate.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.DealerUpdate" %>
<%@ Register TagPrefix="eci" TagName="DealerUpdateList" Src="DealerUpdateList.ascx" %>

<asp:UpdatePanel runat="server" ID="VersionInfoUpdatePanel">
    <ContentTemplate>
        <div style="background-color: orange; display: inline-block; height:20px; margin-bottom: 20px;">
                <% = this.UpdateMessage %>
        </div>
        <br />
        <div>
            <h4>Dealer Versioning Information</h4>
            <table>
                <tr><td class="RightAlign"><label>ERP:</label></td><td><asp:Literal runat="server" ID="VER_ERP" /></td></tr>
                <tr><td class="RightAlign"><label>ERP Version:</label></td><td><asp:Literal runat="server" ID="VER_ERPVersion" /></td></tr>
                <tr><td class="RightAlign"><label>ERP Database Version:</label></td><td><asp:Literal runat="server" ID="VER_ERPDatabaseVersion" /></td></tr>
                <tr><td class="RightAlign"><label>Pipeline Version:</label></td><td><asp:Literal runat="server" ID="VER_PipelineVersion" /></td></tr>
                <tr><td class="RightAlign"><label>ESN Version:</label></td><td><asp:Literal runat="server" ID="VER_ESNVersion" /></td></tr>
                <tr><td class="RightAlign"><label>Operating System:</label></td><td><asp:Literal runat="server" ID="VER_OSName" /></td></tr>
                <tr><td class="RightAlign"><label>Operating System Version:</label></td><td><asp:Literal runat="server" ID="VER_OSVersion" /></td></tr>
                <tr><td class="RightAlign"><label>SQL Server Version:</label></td><td><asp:Literal runat="server" ID="VER_SQLVersion" /></td></tr>
                <tr><td colspan="2"><h4>Dealer ERP Mapping</h4></td></tr>
                <tr><td class="RightAlign"><label>Mapped ERP:</label></td><td><asp:Literal runat="server" ID="MappedERP" /></td></tr>
                <tr><td class="RightAlign"><label>Mapped ERP Version:</label></td><td><asp:Literal runat="server" ID="MappedERPVersion" /></td></tr>
                <tr><td class="RightAlign"><label>Current ESN Build:</label></td><td><asp:Literal runat="server" ID="CurrentESNBuild" /></td></tr>
                <tr>
                    <td class="RightAlign"><asp:Button runat="server" ID="GetESNVersion" OnClick="GetESNVersion_Click" Text="Refresh Version" UseSubmitBehavior="false"/></td>
                    <td><div style="background-color: orange; display: inline-block; height:20px; margin-bottom: 20px;"><% = this.RefreshMessage %></div></td>
                </tr>
            </table>      
        </div>
        <div style="clear: both;">
            <hr />
            <h4>Available ESN Updates</h4>
            <eci:DealerUpdateList runat="server" ID="DealerUpdateListControl" />
        </div>                            
    </ContentTemplate>
</asp:UpdatePanel>