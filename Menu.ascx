<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="Menu" %>

<style type="text/css">
    .style2
    {
        width: 128px;
    }
</style>

<asp:Image ID="Image3" runat="server" ImageUrl="~/images/maxre.jpg" 
    
    
    style="position:absolute; top: 0px; left: 0px; height: 105px; width: 1119px;" />
<asp:Panel ID="Panel1" runat="server" 
    style="position:absolute; top: 105px; left: 0px; height: 1024px; width: 1024px;" 
    BackImageUrl="~/images/background.png">

<table style="width: 915px">
<tr>
<td>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/Homes.png" Width="103px" onclick="ImageButton1_Click" 
        Height="23px" />
</td>
<td>
    <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" 
        ImageUrl="~/images/Updates.png" Width="104px" 
        onclick="ImageButton2_Click"/>
</td>
<td>
    <asp:ImageButton ID="ImageButton4" runat="server" Height="26px" 
        ImageUrl="~/images/Uploads.png" Width="96px" 
        onclick="ImageButton4_Click"  />
        </td>
<td>
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="~/images/Inboxs.png" Height="26px" Width="93px" 
        onclick="ImageButton5_Click" />
       
    </td>
    <td>
        <asp:ImageButton ID="ImageButton8" runat="server" 
        ImageUrl="~/images/msg.png" Height="26px" Width="93px" 
        onclick="ImageButton8_Click" />
    </td>
      <td>
        <asp:ImageButton ID="ImageButton7" runat="server" 
        ImageUrl="~/images/send.png" Height="41px" Width="94px" 
        onclick="ImageButton7_Click" />
    </td>
    <td class="style2">
        <asp:ImageButton ID="ImageButton6" runat="server" Height="24px" 
            ImageUrl="~/images/Logouts.png" onclick="ImageButton6_Click" Width="107px" />
    </td>
<td>
    <asp:ImageButton ID="ImageButton9" runat="server" Height="60px" 
        ImageUrl="~/images/help.jpg" onclick="ImageButton9_Click" Width="108px" />
</td>
    <td>
        &nbsp;</td>
</tr>
</table>
<asp:Image ID="Image2" runat="server" ImageUrl="images/LoaderBarIcon.gif" 
        Width="1024px" Height="24px" style="left:0px;" /> 
</asp:Panel>