<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profilepage.aspx.cs" Inherits="Securepage_profilepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        FirstName:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Fav. Color:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Width="200px" />
    </div>
    </form>
</body>
</html>
