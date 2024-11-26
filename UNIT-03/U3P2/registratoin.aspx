<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registratoin.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1>Registration System</h1>
        </center>
    <table>
        <tr>
            <td class="auto-style1">Enter UserName:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">Enter Email:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">Enter Date Of Birth:</td><!--Date format mm-dd-yyyy-->
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td class="auto-style1">Enter Password:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
       
        <tr>
            <td>Select Security Question:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Favorite Book</asp:ListItem>
                    <asp:ListItem>Favorite Colour</asp:ListItem>
                    <asp:ListItem>Favorite Movie</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Enter Answer:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td></td>
            <td>
                <a href="login.aspx">Back To Login</a>
            </td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        
    </div>
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h1>
    </form>
</body>
</html>
