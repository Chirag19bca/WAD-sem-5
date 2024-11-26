<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 109px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:100%; height: 189px;">
            <tr>
                <td class="auto-style1">First Name:</td>
                <td> <asp:TextBox ID="Textbox1" runat="server" Height="24px" Width="160px" AutoCompleteType="FirstName"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name:</td>
                <td> <asp:TextBox ID="Textbox2" runat="server" Height="24px" Width="160px" AutoCompleteType="LastName"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="auto-style1">Phone:</td>
                <td> <asp:TextBox ID="Textbox3" runat="server" Height="24px" Width="160px" AutoCompleteType="Cellular"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="auto-style1">Email:</td>
                <td> <asp:TextBox ID="Textbox4" runat="server" Height="24px" Width="160px" AutoCompleteType="Email"></asp:TextBox> </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
