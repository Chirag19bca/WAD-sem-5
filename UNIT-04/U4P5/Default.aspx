<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .s1 {
            width:89%;
        }
        .s2 {
            width:237px;
        }
        .s3 {
            width:300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="s1">
        <tr>
            <td colspan="3">
                <center>
                    <asp:Label ID="Label1" runat="server" Text="Product Details Form" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                </center>
            </td>
        </tr>
        <tr>
            <td class="s2" align="right">
                ProductCode
            </td>
            <td class="s3">
                <asp:TextBox ID="TextBox1" runat="server" Width="87px"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="122px" Width="116px" />
            </td>
        </tr>
        <tr>
             <td class="s2" align="right">
                Name
            </td>
            <td class="s3">
                <asp:TextBox ID="TextBox2" runat="server" Width="296px"></asp:TextBox>
            </td>
        </tr>
        <tr>
             <td class="s2" align="right">
                Photo
            </td>
            <td class="s3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="s2" align="right">
                Price
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="s2" align="right">
                Description:

            </td>
            <td class="s3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td class="s2" align="right">
                Category Name:

            </td>
            <td class="s3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <center>
                    <asp:Label ID="Label2" runat="server" Text="Data Successfully Saved..." Font-Size="Medium" Font-Bold="true" ForeColor="Blue" Visible="false"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click"/>
                    <asp:Button ID="Button3" runat="server" Text="Display" 
                        OnClick="Button3_Click" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AllStudentInfo.aspx">Display All Students Information</asp:HyperLink>
                </center>
            </td>
        </tr>
    </table>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
