<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Welcome,
            <asp:LoginName ID="LoginName1" runat="server"  />
            <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
    <p>
        <a href="Securepage/profilepage.aspx">ProfilePage.aspx</a>
    </p>
</body>
</html>
