<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Msginbox.aspx.cs" Inherits="Msginbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Menu.ascx" TagName="Head" TagPrefix="wuc" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PCCP</title>
    <link rel="icon" href="images/Logo.ico"/>
    <script language="javascript" type="text/javascript">
    javascript:window.history.forward(1);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <wuc:Head ID="head1" runat="server" />
        <asp:Panel ID="Panel1" runat="server" 
            
            
            style="position:absolute; top: 252px; left: 164px; height: 367px; width: 612px;">
            <asp:GridView ID="GridView1" runat="server" Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Text="Inbox" 
            style="position:absolute; top: 211px; left: 389px;" Font-Bold="True" 
            Font-Names="Bodoni MT" Font-Size="Larger" ForeColor="#003300"></asp:Label>
        <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="Label3" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="Label4" runat="server" Visible="false"></asp:Label>
    </div>
    </form>
</body>
</html>
