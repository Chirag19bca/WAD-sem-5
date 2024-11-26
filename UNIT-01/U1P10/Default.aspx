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
           width: 142%;
        }

        .style3 {
           width: 213%;
        }

        .style4 {
           width: 151%;
        }

        .style5 {
           width: 171%;
        }

        .style6 {
           width: 116%;
        }
        .auto-style7 {
            width: 18%;
        }
        .auto-style8 {
            width: 22%;
        }
        .auto-style12 {
            width: 19%;
        }
        .auto-style13 {
            width: 26%;
        }
        .auto-style17 {
            width: 72%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <strong>Psersonal Deatails: <br /></strong>
            <table class="style1">
                <tr>
                    <td class="auto-style7">First Name:</td>
                  <td>  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
                    <caption>
                        s
                    </caption>
                </tr>

                 <tr>
                    <td class="auto-style7">Last Name:</td>
                   <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>   </td>
                </tr>

                  <tr>
                    <td class="auto-style7">Email:</td>
                  <td>  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </td>
                </tr>

                 <tr>
                    <td class="auto-style7">Mobile No:</td>
                   <td> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">
            <strong>Educational Deatails:<br /></strong>
            <table class="style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13">University/Board</td>
                    <td class="auto-style13">Passing year</td>
                    <td>Percentage Obtained</td>
                </tr>

                <tr>
                    <td class="auto-style8">S.S.C</td>
                    <td class="auto-style13"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td class="auto-style13"> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
               </tr>

                 <tr>
                    <td class="auto-style8">H.S.C</td>
                    <td class="auto-style13"><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                    <td class="auto-style13"> <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
               </tr>

                 <tr>
                    <td class="auto-style8">Graduates</td>
                    <td class="auto-style13"><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                    <td class="auto-style13"> <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
               </tr>

                 <tr>
                    <td class="auto-style8">Post Graduate</td>
                    <td class="auto-style13"><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                    <td class="auto-style13"> <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
               </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server">
            <strong>Experence Deatail: <br /></strong>
            <table class="style1">
                   <tr>
                       <td class="auto-style12">Company Name:</td>
                       <td><asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                   </tr>

                  <tr>
                       <td class="auto-style12">Form Date:</td>
                       <td><asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                 </tr>
                   <tr>
                       <td class="auto-style12">To date:</td>
                       <td><asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></td>
                   </tr>

                   <tr>
                       <td class="auto-style12">Post:</td>
                       <td><asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>
                   </tr>
            </table>
        </asp:Panel>
         <br />
        <asp:Panel ID="Panel4" runat="server">
        </asp:Panel>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
