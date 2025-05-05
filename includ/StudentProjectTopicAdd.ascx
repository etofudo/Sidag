<%@ Control Language="C#" AutoEventWireup="true" CodeFile="StudentProjectTopicAdd.ascx.cs" Inherits="include_StudentProjectTopicAdd" %>
<style type="text/css">

    .auto-style1 {
        width: 234px;
    }
    .auto-style2 {
        width: 234px;
        height: 32px;
    }
    .auto-style3 {
        height: 32px;
    }
    .auto-style6 {
        width: 234px;
        height: 31px;
    }
    .auto-style7 {
        height: 31px;
    }
    .auto-style4 {
        width: 234px;
        height: 74px;
    }
    .auto-style5 {
        height: 74px;
    }
    #TextArea1 {
        height: 63px;
    }
</style>

<asp:Label ID="Label1" runat="server" Text="STUDENT PROJECT "></asp:Label>
<br />
<table style="width:100%;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label7" runat="server" Text="Year Published"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-right: 2px" Width="160px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label6" runat="server" Text="Category"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="167px">
                <asp:ListItem>Select here...</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Details"></asp:Label>
        </td>
        <td class="auto-style5">
            <textarea id="TextArea1" cols="20" name="S1" rows="1"></textarea></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="27px" BackColor="#CCCCFF" BorderColor="Green" BorderStyle="Solid" ForeColor="Green" />&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Height="26px" Text="Cancel" Width="55px" BackColor="#CCCCFF" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
<asp:Label ID="Label8" runat="server"></asp:Label>


