<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Default" %>

<%@ Register TagPrefix="eci" TagName="APITransactionList" Src="Components/APITransactionList.ascx" %>

<asp:Content ID="Content" ContentPlaceHolderID="cph1" runat="server">
    <h2 id="Header" runat="server">Vendor/Dealer API Transactions</h2>
    <hr />
    <div><eci:APITransactionList runat="server" ID="APITransactionListControl" /></div>
</asp:Content>
