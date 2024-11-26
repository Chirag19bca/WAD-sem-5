<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 19px;
            width: 173px;
            margin-left: 25px;
        }
        #Text2 {
            height: 19px;
            width: 171px;
            margin-left: 25px;
        }
        #Text3 {
            height: 19px;
            width: 174px;
            margin-left: 56px;
        }
        #Text4 {
            height: 19px;
            width: 174px;
            margin-left: 56px;
        }
        .auto-style1 {
            width: 118px;
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
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
         </div>
    </form>
</body>
</html>
