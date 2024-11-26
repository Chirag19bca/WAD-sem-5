<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Select Product:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="productname" DataValueField="price"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <br />
        Price:
        <asp:Label ID="Label1" runat="server" Text="Label" style="font-weight:700"></asp:Label>
        <br />
        <br />
            <asp:Button ID="Button1" runat="server" Text="Fetch Price:" OnClick="Button1_Click"/>
    </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter Quantity:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Calculate Total Price" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="" style="font-weight:700"></asp:Label>
    </form>
</body>
</html>
