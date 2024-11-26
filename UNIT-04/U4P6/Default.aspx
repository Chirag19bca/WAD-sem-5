<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [doctor]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  * 
FROM patient 
INNER JOIN doctor ON patient.D_id = doctor.D_id"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="D_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="D_id" HeaderText="D_id" ReadOnly="True" SortExpression="D_id" />
                <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="P_id,D_id1" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="P_id" HeaderText="P_id" ReadOnly="True" SortExpression="P_id" />
                <asp:BoundField DataField="P_name" HeaderText="P_name" SortExpression="P_name" />
                <asp:BoundField DataField="D_id" HeaderText="D_id" SortExpression="D_id" />
                <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
