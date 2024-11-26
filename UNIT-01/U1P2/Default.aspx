<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CSS Demo:</title>
    <style type="text/css">
        .Style1 {
        background-color:yellow;
        color:blue;
        border:2px solid red;
        }
        .Style2 {
        background-color:aqua;
        color:blue;
        border:2px dashed Black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Style1" OnClick="Button1_Click" />
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Style2" OnClick="Button2_Click" />
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
