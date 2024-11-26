<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .s1
        {
            width:100%;    
        }
        .s2
        {
            height:20px;    
        }
        .auto-style1 {
            height: 20px;
            width: 165px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="s1">
        <tr>
            <td class="auto-style1">
                Employee Code:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Employee Name:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Address:
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="69px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Select Department:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Select State:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Select City:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="s2" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Sumbit" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="X-Large"></asp:Label>
    </div>
    </form>
</body>
</html>
