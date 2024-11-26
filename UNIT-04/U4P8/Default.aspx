<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 74px;
        }
        .auto-style2 {
            width: 63px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <table>
            <tr>
                <td class="auto-style2">
                    RollNo:
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Name:
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Marks:
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>   
        </table>
        <table>
             <tr>    
                <td colspan="6"><asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />&nbsp;<asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />&nbsp;<asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />&nbsp;<asp:Button ID="Button4" runat="server" Text="select" OnClick="Button4_Click" /></td>                
            </tr>
            <tr>
                <td colspan="6"><asp:Button ID="Button5" runat="server" Text="First" OnClick="Button5_Click" />&nbsp;<asp:Button ID="Button6" runat="server" Text="Next" OnClick="Button6_Click" />&nbsp;<asp:Button ID="Button7" runat="server" Text="Pervious" OnClick="Button7_Click" />&nbsp;<asp:Button ID="Button8" runat="server" Text="Last" OnClick="Button8_Click" /></td>
            </tr>
        </table>
    <!--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    --></div>
    </form>
</body>
</html>
