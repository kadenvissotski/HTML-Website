<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="CalculatorApp.aspx.cs" Inherits="Assignment5.ContentPages.CalculatorApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Styles/Calc.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Articles" runat="server">
    <style>
        #calcWebPage{
    width: 400px;
    height: 350px;
    border: 1px black;
    margin: 15px auto;
    border-radius: 20px;
    background-color: lightgrey;
}

h2{
    text-align: center;
}

table{
    column-count: 3;

}
    </style>
    <link href="Styles/Calc.css" rel="stylesheet" />
    <div id="calcWebPage">

            <h2>Calculator</h2>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2" style="text-align: right;">First Number:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="firstNum" runat="server" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="FirstNumRequired" runat="server" ControlToValidate="firstNum" ErrorMessage="Enter a numeric value for First Number." ForeColor="Red" Font-Size="Large" >*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="firstNum" ErrorMessage="*" Font-Size="Large" ForeColor="Red" Operator="DataTypeCheck" Type="Double" EnableClientScript="False"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="firstCol" style="text-align: right;">Second Number:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="secondNum" runat="server" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="SecondNumRequired" runat="server" ControlToValidate="secondNum" ErrorMessage="Enter a numeric value for Second Number." ForeColor="Red" Font-Size="Large">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="secondNum" ErrorMessage="*" Font-Size="Large" Font-Underline="False" ForeColor="Red" Operator="DataTypeCheck" Type="Double" EnableClientScript="False"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right;">Operators:</td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="OperatorsList" runat="server" Font-Size="Large">
                            <asp:ListItem>Addition (+)</asp:ListItem>
                            <asp:ListItem>Subtraction (-)</asp:ListItem>
                            <asp:ListItem>Multiplication (*)</asp:ListItem>
                            <asp:ListItem>Division (/)</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="OperatorsList" ErrorMessage="Please select an operator." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style4" colspan="3" style="text-align: center;">Output:
                        <asp:TextBox ID="OutputBox" runat="server" Font-Size="Large"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="firstCol" colspan="3" style="text-align: center;">
                        <asp:Button ID="Calculate" runat="server" Text="Calculate" Font-Size="Large" Width="100px" OnClick="OutputInfo" />
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" Font-Size="Large" Width="100px"  OnClick="CancelRequest" />
                    </td>
                </tr>
            </table>

         </div> 

        
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Large" ForeColor="Red" Width="400px" HeaderText="Error Messages:" />

</asp:Content>
