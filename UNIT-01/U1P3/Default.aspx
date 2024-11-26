<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>addition and multiplication</title>
    <style type="text/css">
        .auto-style1 {
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <Table ID="Table1" runat="server">
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
        </Table>
        <asp:Button ID="Button1" runat="server" Text="Addition" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Multiplication" OnClick="Button2_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
