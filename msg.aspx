﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="msg.aspx.cs" Inherits="msg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/Menu.ascx" TagName="Head" TagPrefix="wuc" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PCCP</title>
    <link rel="icon" href="images/Logo.ico"/>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 15px;
        }
        .style3
        {
            width: 116px;
        }
        .style4
        {
            width: 121px;
            height: 13px;
        }
        .style5
        {
            width: 116px;
            height: 13px;
        }
        .style6
        {
            width: 15px;
            height: 13px;
        }
        .style7
        {
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <wuc:Head ID="head1" runat="server" />
        <asp:Label ID="Label9" runat="server" Visible="false"></asp:Label>
    <table style="position:absolute; top: 224px; left: 156px; width: 596px;">
    <tr>
    <td class="style1">
    
    </td>
    <td class="style3">
    
    </td>
    <td class="style2">
    
    </td>
    <td>
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td align="center" colspan="2">
    
               <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                   Font-Names="Arial Rounded MT Bold" Font-Size="Larger" ForeColor="#003366" 
                   Text="SEND Message"></asp:Label>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style4">
    
    </td>
    <td class="style5">
    
               <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                   Font-Names="Arial Unicode MS" ForeColor="#660066" Text="From"></asp:Label>
    
    </td>
    <td class="style6">
         <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                   Font-Names="Arial Unicode MS" ForeColor="#003300"></asp:Label>    
    </td>
    <td class="style7">
    
    </td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
               <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                   Font-Names="Arial Unicode MS" ForeColor="#660066" Text="To"></asp:Label>
    
    </td>
    <td class="style2">
    
               <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                   Font-Names="Book Antiqua" Height="25px" Width="172px">
                   <asp:ListItem>- Select Name -</asp:ListItem>
               </asp:DropDownList>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
               <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                   Font-Names="Arial Unicode MS" ForeColor="#660066" Text="Message"></asp:Label>
    
    </td>
    <td class="style2">
    
               <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="182px"></asp:TextBox>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
               &nbsp;</td>
    <td class="style2">
    
               &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
               &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3" align="center">
    
        <asp:ImageButton ID="ImageButton2" runat="server" Height="22px" 
            ImageUrl="~/images/back.png" ToolTip="Back" Width="67px" 
            onclick="ImageButton2_Click" />
    
    </td>
    <td class="style2">
    
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">SEND</asp:LinkButton>
    
    </td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1" colspan="4">
    
            <asp:GridView ID="GridView1" runat="server" Width="100%" 
            BackColor="#DEBA84" BorderColor="#DEBA84" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style1">
    
        &nbsp;</td>
    <td class="style3">
    
        &nbsp;</td>
    <td class="style2">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    </table>
        <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </div>
    </form>
</body>
</html>
