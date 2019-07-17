<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true"
    CodeBehind="DealerEdit.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.DealerEdit" %>

<%@ Register TagPrefix="eci" TagName="DealerEdit" Src="Components/DealerEdit.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <h2>
        Edit Dealer</h2>
    <hr />
    <div>
        <h3>
            Dealer Information</h3>
        <div>
            <eci:DealerEdit runat="server" ID="DealerEditControl" />
        </div>
    </div>
    <hr />
    <div>
        <asp:Button runat="server" ID="SaveButton" Text="Save" />
        <asp:Button runat="server" ID="CancelButton" Text="Cancel" />
    </div>
</asp:Content>
