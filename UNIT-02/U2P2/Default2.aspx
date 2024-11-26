<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="mybody" runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>blue</asp:ListItem>
            <asp:ListItem>green</asp:ListItem>
            <asp:ListItem>yellow</asp:ListItem>
            <asp:ListItem>red</asp:ListItem>
            <asp:ListItem>aqua</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
