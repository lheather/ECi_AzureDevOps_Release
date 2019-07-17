<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="Dealers.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Dealers" %>

<%@ Register TagPrefix="eci" TagName="DealerList" Src="Components/DealerList.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Manage Dealers</h2>
    <hr />
    <div>
        <h3>
            Dealer List</h3>
        <h4>Information below is confidential and proprietary. Do not share with anyone EXCEPT the dealer.</h4>
        <div>
            <div>
                <asp:HyperLink runat="server" ID="AddHyperLinkTop" Text="Add New Dealer" NavigateUrl="~/Administration/DealerEdit.aspx" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton runat="server" ID="lnkDeleteDealersTop" CssClass="DeleteSelected" OnClick="lnkDeleteDealers_Click" Text="Delete Dealers" style="display:none;"/>
            </div>
            <div>
                <eci:DealerList runat="server" ID="DealerListControl" />
            </div>
            <div>
                <asp:HyperLink runat="server" ID="AddHyperLink" Text="Add New Dealer" NavigateUrl="~/Administration/DealerEdit.aspx" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton runat="server" ID="lnkDeleteDealers" CssClass="DeleteSelected" OnClick="lnkDeleteDealers_Click" Text="Delete Dealers"  style="display:none;"/>
            </div>
        </div>
    </div>
</asp:Content>
