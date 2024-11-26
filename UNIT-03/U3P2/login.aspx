<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
    <div>
        <center><h1>Login system</h1></center>
    <table>
        <tr>
            <td>
                Enter Username:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Enter Password:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        <a href="registratoin.aspx">New Users</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="forgetpassword.aspx">Forget password?</a>
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
