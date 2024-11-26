<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="secure/UserProfile.aspx">Profile</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink><br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" /><br />
        <asp:LoginView ID="LoginView1" runat="server">
        </asp:LoginView>
        <asp:LoginName ID="LoginName1" runat="server" />
    </div>
    </form>
</body>
</html>