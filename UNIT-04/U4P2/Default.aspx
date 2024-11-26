<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr style="width:100%">
            <td colspan="2">Online Hotel Room Booking System</td>
        </tr>
        <tr>
            <td>
                Check In Date:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Number of Days:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Room Type:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="20000">S1</asp:ListItem>
                    <asp:ListItem Value="30000">S2</asp:ListItem>
                    <asp:ListItem Value="50000">S3</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Number of Guest:
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Advance Payment(Rs.):
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirm Booking:</td>
            <td colspan="2">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="confirm" Text="Yes"/>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="confirm" Text="No"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">:<asp:Button ID="Button1" runat="server" Text="Sumbit" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBox5" runat="server" Height="160px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
