<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <center>
    <div>
        <center><h1>Forget Password</h1></center>
    <table>
        <tr>
            <td class="auto-style1">
                Enter Username:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Registerd Email:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" Height="21px" Width="68px" 
            OnClick="Button1_Click" />
    </div>
            <h1>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
   </center>
    </form>
</body>
</html>
