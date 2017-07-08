<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PCCP</title>
    <style type="text/css">
        #form1
        {
            height: 167px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
    <table style="position:absolute; top: 220px; left: 569px; height: 158px; width: 277px;">
    <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
        <asp:Image ID="Image1" runat="server" Height="29px" 
            ImageUrl="~/images/logins.png" Width="90px" />
    
    </td>
    <td>
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label1" runat="server" Font-Names="High Tower Text" 
            Font-Size="18px" ForeColor="#9900CC" Text="User Name"></asp:Label>
    
    </td>
    <td>
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="AliceBlue" 
            BorderColor="#006600" BorderStyle="Inset" BorderWidth="1px"></asp:TextBox>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label2" runat="server" Font-Names="High Tower Text" 
            Font-Size="18px" ForeColor="#9900CC" Text="Password"></asp:Label>
    
    </td>
    <td>
    
        <asp:TextBox ID="TextBox2" runat="server" BackColor="AliceBlue" 
            BorderColor="#006600" BorderStyle="Inset" BorderWidth="1px" TextMode="Password"></asp:TextBox>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
        &nbsp;</td>
    <td>
    
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/forgot.aspx" 
            onclick="LinkButton1_Click1">forgot password?</asp:LinkButton>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td align="right">
    
        <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" 
            ImageUrl="~/images/Signout.png" Width="80px" 
            onclick="ImageButton2_Click" CausesValidation="False" />
    
    </td>
    <td align="center">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
            ImageUrl="~/images/login.png" Width="80px" onclick="ImageButton1_Click" />
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    </table>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/maxre.jpg" 
            Width="1303px" />
    </div>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
