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
        .auto-style2 {
            height: 30px;
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
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ErrorMessage="Enter Date Beteeen 1/1/1980 To 1/1/2024" 
                        ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" 
                        MaximumValue="2024/1/1" MinimumValue="1980/1/1"></asp:RangeValidator>  
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
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Proper Mobile No(10 digit only)" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

                </td>

            </tr>

              <tr>
                <td>Enter Password:</td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password " ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>
            </tr>

            <tr>
                <td>Enter Retry Password:</td>
                <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToCompare="TextBox6" ControlToValidate="TextBox5" 
                        ErrorMessage="Enter same password" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td>Enter Roll No:</td>
                <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Enter roll no like BCA01" ControlToValidate="TextBox7" 
                        ForeColor="Red" ValidationExpression="^BCA.*"></asp:RegularExpressionValidator>
                   <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Enter roll no like BCA01" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                --></td>
            </tr>

            <tr>
                <td class="auto-style2">Enter Date:</td>
                <td class="auto-style2"><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1"
                        runat="server" ErrorMessage="Enter date less then today" 
                        ControlToCompare="TextBox9" ControlToValidate="TextBox8" ForeColor="Red" 
                        Operator="LessThan"></asp:CompareValidator>
                    <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td>Enter Age:</td>
                <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Enter age between 18 to 35" 
                        ForeColor="Red" MaximumValue="35" MinimumValue="18" Type="Integer"></asp:RangeValidator>
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
