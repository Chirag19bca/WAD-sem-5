<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FriendsDetails] WHERE ([FriendID] = @FriendID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="FriendID" QueryStringField="EventID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="FriendID">
                <Columns>
                    <asp:BoundField DataField="FriendID" HeaderText="FriendID" ReadOnly="True" SortExpression="FriendID" />
                    <asp:BoundField DataField="FriendName" HeaderText="FriendName" SortExpression="FriendName" />
                    <asp:BoundField DataField="FriendDOB" HeaderText="FriendDOB" SortExpression="FriendDOB" />
                </Columns>
            </asp:GridView>
            
    </div>
    </form>
</body>
</html>
