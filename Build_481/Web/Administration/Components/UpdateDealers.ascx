<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdateDealers.ascx.cs" Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Components.UpdateDealers" %>

<div style="background-color: orange; display: inline-block; height:20px; margin-bottom: 20px;">
   <% = this.ValidationMessage %>
</div>
<br />
<table>
    <tr>
        <td>
            <asp:TextBox ID="RunTime" runat="server"/>
        </td>
        <td>
            <asp:DropDownList runat="server" ID="VendorDropDownList" DataTextField="Name" DataValueField="Id" AppendDataBoundItems="true">
                <asp:ListItem Value="-1">-- Select One --</asp:ListItem>
                <asp:ListItem Value="0">All</asp:ListItem>    
            </asp:DropDownList>
        </td>
    </tr>
</table>


                                    
