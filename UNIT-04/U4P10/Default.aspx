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
            width:357px;
            height:123px;
              
        }
        .s3 
        {
            height:25px;
              
        }
        .s4 
        {
            height:123px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Generate Inhvoice"></asp:Label>
        <br />

        Order Id:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <table class="s1" border="1">
                <tr>
                    <td style="text-align:center" class="s3">
                        Retail Invoice
                    </td>
                </tr>
                <tr>
                    <td>
                        Order No:-<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        Order Date:-<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Download Invoice" BackColor="#ffff99" Height="47px" Font-Size="Large" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="s1" border="1">
                            <tr>
                                <td class="s2">
                                    Buyer Address:<br /><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="s4">
                                    Seller Address:<br /><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Height="190px" Width="839px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Ino" HeaderText="Invoice. No.">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Pcode" HeaderText="Product Id">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Qty" HeaderText="Qty">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Price" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Total" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        Grand Total:<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        <asp:FormView ID="FormView1" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging">
                        </asp:FormView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong style="color:#FF0000">
                            Declaration: This is a Computer Generated Invoice and does not required Signature.
                        </strong>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
