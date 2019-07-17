<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
    Inherits="ECi.Serialized.ServicesRouter.Web.Administration.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="<%=ResolveClientUrl("~/Administration/Assets/site-1.2.0.0.css") %>" rel="Stylesheet" type="text/css"></link>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Login ID="UserLogin" runat="server" DisplayRememberMe="false" />
    </div>
    </form>
</body>
</html>
