<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap ID="ImageMap1" runat="server" Height="40px" 
            ImageUrl="~/Screenshot 2024-07-16 120811.png">
            <asp:RectangleHotSpot Bottom="310" NavigateUrl="~/Home.aspx" Right="310" />
            <asp:RectangleHotSpot Bottom="310" Left="100" NavigateUrl="~/Product.aspx" 
                Right="600" />
            <asp:RectangleHotSpot Bottom="310" Left="200" NavigateUrl="~/Services.aspx" 
                Right="900" />
        </asp:ImageMap>
    </div>
    </form>
</body>
</html>
