<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table id="Table1" runat="server">
            <tr>
                <td class="auto-style1">Enter no1:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Enter no2:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Addition" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Multiplication" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="division" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="subtraction" OnClick="Button4_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
