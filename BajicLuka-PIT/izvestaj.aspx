<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="BajicLuka_PIT.izvestaj" %>
<%@ PreviousPageType VirtualPath="~/prijava.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>IZVESTAJ</h1>

            <asp:Label ID="lblImeiPrezime" runat="server"></asp:Label>
            <asp:Label ID="lblEmail" runat="server"></asp:Label>            
            <asp:Label ID="lblGodine" runat="server"></asp:Label>
            <asp:Label ID="lblRazred" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
