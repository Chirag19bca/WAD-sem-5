<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 225px;
        }
        .auto-style4 {
            width: 102px;
        }
        .auto-style5 {
            width: 140px;
        }
        .auto-style6 {
            width: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButton ID="RadioButton1" runat="server" text="cash" GroupName="paymentmode" OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="True"/>
        <asp:RadioButton ID="RadioButton2" runat="server" text="Credit/Debit cards" GroupName="paymentmode" OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="True"/>
        <asp:RadioButton ID="RadioButton3" runat="server" text="Cheque" GroupName="paymentmode" OnCheckedChanged="RadioButton3_CheckedChanged" AutoPostBack="True"/>
        <br />
        <br />

        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <table>
                <tr>
                    <td class="auto-style4">Enter Amount:</td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>    
                </tr>
            </table>
        </asp:Panel>

         <asp:Panel ID="Panel2" runat="server" Visible="false">
            <table>
                <tr>
                    <td class="auto-style5">Enter Card number:</td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>    
                </tr>

                <tr>
                    <td class="auto-style5">Name On Card:</td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>    
                </tr>
                
                <tr>
                    <td class="auto-style5">Expiry Month/Yesr:</td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>    
                </tr>

                <tr>
                    <td class="auto-style5">Enter Amount:</td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>    
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" Visible="false">
            <table>
                <tr>
                    <td class="auto-style6">Enter Cheque number:</td>
                    <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>    
                </tr>

                <tr>
                    <td class="auto-style6">Enter Date Of Cheque:</td>
                    <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>    
                </tr>
                
                <tr>
                    <td class="auto-style6">Enter Amount:</td>
                    <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>    
                </tr>

                <tr>
                    <td class="auto-style6">Enter Cheque Date:</td>
                    <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>    
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <button type="submit" style="height: 36px; width: 104px">Click Me</button>
    </div>
    </form>
</body>
</html>
