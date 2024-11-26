<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>CPU</asp:ListItem>
            <asp:ListItem>MotherBoard</asp:ListItem>
            <asp:ListItem>RAM</asp:ListItem>
            <asp:ListItem>KeyBoard</asp:ListItem>
            <asp:ListItem>Mouse</asp:ListItem>
            <asp:ListItem>Cabinet</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" />
        &nbsp;<br />
        <br />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
