<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <asp:Literal ID="Literal1" runat="server" Text="Literal demo"></asp:Literal>
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Click me and see title bar" Font-Size="Larger" Height="63px" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
