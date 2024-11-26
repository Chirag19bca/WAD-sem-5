<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Internal Style sheet demo</title>
    <style>
        .mystyle 
        {
            background-color:green;
            border:2px solid blue;
            font-size:180px;
        }
        .mystyle:hover 
        {
            background-color:yellow;
            border:2px solid red;
            font-size:180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="hello world" CssClass="mystyle" ></asp:Label>
    </div>
    </form>
</body>
</html>
