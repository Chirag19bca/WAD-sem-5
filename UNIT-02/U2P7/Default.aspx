<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 131px;
            font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="auto-style1">Item No:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Item Name:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Item Price:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Item Qty:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="160px"></asp:TextBox></td>
            </tr>
        </table><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="15pt" Height="39px" OnClick="Button1_Click" Width="137px" />
    </div>
    </form>
</body>
</html>
