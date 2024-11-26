<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .style2 {
            width: 133px;
        }
        .style3 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">New Member</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Existing Member</asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table id="Table1" runat="server" class="style1">
                <tr>
                    <td class="style2">Username:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style2">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style2">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style2">Email:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="Register" Height="37px"  Width="128px" />
        </asp:Panel>
          <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table id="Table2" runat="server" class="style1">
                <tr>
                    <td class="style3">Username:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style3">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="Login" Height="37px" Width="128px" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
