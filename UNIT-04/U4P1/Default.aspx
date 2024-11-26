<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Rollno"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentInfo]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentScore] WHERE ([Rollno] = @Rollno)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Rollno" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" 
            DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                Python:
                <asp:TextBox ID="PythonTextBox" runat="server" Text='<%# Bind("Python") %>' />
                <br />
                Java:
                <asp:TextBox ID="JavaTextBox" runat="server" Text='<%# Bind("Java") %>' />
                <br />
                php:
                <asp:TextBox ID="phpTextBox" runat="server" Text='<%# Bind("php") %>' />
                <br />
                Rollno:
                <asp:TextBox ID="RollnoTextBox" runat="server" Text='<%# Bind("Rollno") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Python:
                <asp:TextBox ID="PythonTextBox" runat="server" Text='<%# Bind("Python") %>' />
                <br />
                Java:
                <asp:TextBox ID="JavaTextBox" runat="server" Text='<%# Bind("Java") %>' />
                <br />
                php:
                <asp:TextBox ID="phpTextBox" runat="server" Text='<%# Bind("php") %>' />
                <br />
                Rollno:
                <asp:TextBox ID="RollnoTextBox" runat="server" Text='<%# Bind("Rollno") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Python:
                <asp:Label ID="PythonLabel" runat="server" Text='<%# Bind("Python") %>' />
                <br />
                Java:
                <asp:Label ID="JavaLabel" runat="server" Text='<%# Bind("Java") %>' />
                <br />
                php:
                <asp:Label ID="phpLabel" runat="server" Text='<%# Bind("php") %>' />
                <br />

                Rollno:
                <asp:Label ID="RollnoLabel" runat="server" Text='<%# Bind("Rollno") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
