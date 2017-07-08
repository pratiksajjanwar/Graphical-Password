<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="forgot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 287px;
        }
        .style3
        {
            width: 235px;
        }
        .style4
        {
            width: 287px;
            height: 9px;
        }
        .style6
        {
            width: 235px;
            height: 9px;
        }
        .style7
        {
            height: 9px;
            width: 318px;
        }
        .style8
        {
            width: 318px;
        }
        .style9
        {
            width: 213px;
        }
        .style10
        {
            width: 213px;
            height: 9px;
        }
        .style11
        {
            width: 287px;
            height: 47px;
        }
        .style12
        {
            width: 213px;
            height: 47px;
        }
        .style13
        {
            width: 235px;
            height: 47px;
        }
        .style14
        {
            width: 318px;
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="147px" 
            ImageUrl="~/images/maxre.jpg" Width="1243px" />
    
    </div>
    <table style="width: 78%; height: 419px;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                FORGOT YOUR PASSWORD?</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                Enter Following Details.</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                Enter your username</td>
            <td class="style3">
                <asp:TextBox ID="txtunm" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtunm" ErrorMessage="EnterCorrectUserName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                Enter your Date Of Birth</td>
            <td class="style3">
                <asp:TextBox ID="txtdb" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdb" ErrorMessage="EnterCorrectDateOfBirth"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
                Enter your Contact Number</td>
            <td class="style13">
                <asp:TextBox ID="txtcno" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcno" ErrorMessage="EnterCorrectContactNumber"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style10">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/backs.png" 
                    onclick="ImageButton1_Click" Width="101px" PostBackUrl="~/Default.aspx" 
                    ValidationGroup="0" />
            </td>
            <td class="style6">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" 
                    ImageUrl="~/images/NEXT.gif" Width="128px" onclick="ImageButton2_Click1" />
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
