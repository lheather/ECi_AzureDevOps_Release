<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdateDealersLogList.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.UpdateDealersLogList" %>

<asp:GridView runat="server" ID="LogGridView" AutoGenerateColumns="false" AllowSorting="true" OnSorting="LogGridView_Sorting"
    OnRowCreated="LogGridView_RowCreated" 
    CssClass="Grid" AlternatingRowStyle-CssClass="alt">
    <Columns>
        <asp:BoundField HeaderText="Batch Number" SortExpression="BatchNumber" DataField="BatchNumber" />
        <asp:BoundField HeaderText="Batch Type" SortExpression="BatchTypeName" DataField="BatchTypeName" />
        <asp:BoundField HeaderText="Dealer ESN Id" SortExpression="DealerID" DataField="DealerID" />
        <asp:BoundField HeaderText="Dealer Number" SortExpression="DealerNumber" DataField="DealerNumber" />
        <asp:BoundField HeaderText="Log Date" SortExpression="RecordModified" DataField="RecordModified" />
        <asp:BoundField HeaderText="Error" SortExpression="Error" DataField="Error" />
        <asp:BoundField HeaderText="ERP Version" SortExpression="ERPVersion" DataField="ERPVersion" />
    </Columns>
</asp:GridView>