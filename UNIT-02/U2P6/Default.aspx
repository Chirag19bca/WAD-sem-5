<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                
        Select Any File:<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />        
        <asp:Button ID="Button1" runat="server" Text="Insert Picture" OnClick="Button1_Click" />
        <br />
        <br />   
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="250px" Width="225px" ImageUrl='<%# Eval("Name","~/image/{0}") %>' />
            </ItemTemplate>
        </asp:DataList>                             
    </div>
    </form>
</body>
</html>
