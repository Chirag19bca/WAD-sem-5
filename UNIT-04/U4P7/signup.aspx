<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .s1 
        {
            width: 100%;
        }
        .s2 
        {
            width: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" 
            BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" 
            OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" 
            OnFinishButtonClick="CreateUserWizard1_FinishButtonClick" Width="335px">
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#284775" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server"/>
                <asp:WizardStep runat="server" Title="Personal Info: ">
                    <table class="s1">
                        <tr>
                            <td>
                                First Name:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="s2">
                                Fav. Color:
                            </td>
                            <td class="s2">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td class="s2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="s2">
                                Profile Picture:
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:CompleteWizardStep  runat="server"/>
            </WizardSteps>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
                VerticalAlign="Top" />
            <StepNavigationTemplate>
                <asp:Button ID="StepPerviousButton" runat="server" Text="Pervious" 
                    BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                    CausesValidation="False" CommandName="MovePervious" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" 
                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                    CausesValidation="False" CommandName="MoveNext" Font-Names="Verdana" 
                    ForeColor="#284775" Text="Next" />
            </StepNavigationTemplate>
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
