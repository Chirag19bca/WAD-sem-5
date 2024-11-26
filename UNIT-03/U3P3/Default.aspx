<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .label {
        color : red;}
        .auto-style1 {
            height: 34px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server" method="post">
    
       
            <div>
        <table>
            <tr>
                <td>Enter Your name:</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                         ErrorMessage="Please Enter Name" Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    
                </td>
                
            </tr>

            <tr>
                <td class="auto-style1">Enter Birth Date:</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Date Beteeen 1/1/1980 To 1/1/2000" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" MaximumValue="2000/1/1" MinimumValue="1980/1/1"></asp:RangeValidator>  
                </td>
            </tr>

            <tr>
                <td>Enter Email-ID:</td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Proper E-mail ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
               
            </tr>

            <tr>
                <td>Enter Mobile No:</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter Proper Mobile No(10 digit only)" 
                        ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

                </td>

            </tr>

        </table>
                <br />
                
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <br />
                <br />
               <h1> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>   </h1>
    </div>

    </form>
        
</body>
</html>
