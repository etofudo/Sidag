<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MessageAdd.ascx.cs" Inherits="include_MessageAdd" %>
<style type="text/css">

    .auto-style1 {
        height: 23px;
    }
    .auto-style2 {
        height: 26px;
    }
    #TextArea1 {
        height: 56px;
    }
</style>

<p style="margin-left: 200px">
    &nbsp;</p>
<table style="width: 100%; margin-bottom: 0px;">
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#660033" Text="SEND MESSAGE"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
    <asp:Label ID="txtMessage" runat="server"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:DropDownList ID="ddlUserName" runat="server" Height="35px" Width="176px">
            </asp:DropDownList>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Email" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEmail" runat="server" Width="171px" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#660033" Text="Date"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtDate" runat="server" Width="171px"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label6" runat="server" Text="Message" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtSendMessage" runat="server" Height="20px" Width="172px"></asp:TextBox>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" ForeColor="#660033" Text="File Upload"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:FileUpload ID="MessageUpload" runat="server" />
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="btnSubmit" runat="server" BackColor="#CCCCFF" ForeColor="Green" Text="Send" OnClick="btnSubmit_Click" /> &nbsp; &nbsp;
            <asp:Button ID="btnReset" runat="server" BackColor="#CCCCFF" ForeColor="Blue" Text="Reset" /> &nbsp; &nbsp;
            <asp:Button ID="btnCancel" runat="server" BackColor="#CCCCFF" ForeColor="Red" Text="Cancel" />&nbsp; &nbsp;
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>

<p>
    &nbsp;</p>



