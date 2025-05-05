<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Userlogin.ascx.cs" Inherits="Library_System_include_Userlogin" %>
<style type="text/css">

    .auto-style1 {
        width: 185px;
    }
</style>

<p style="font-weight: 700">
    USER LOGIN</p>
<p style="font-weight: 700">
    <asp:Label ID="txtNotification" runat="server"></asp:Label>
</p>
<p>
    <table style="width:372px; height: 137px;">
        <tr>
            <td class="auto-style1">User</td>
            <td>
                <asp:DropDownList ID="ddlUser" runat="server">
                    <asp:ListItem>Select Category</asp:ListItem>
                    <asp:ListItem>staff</asp:ListItem>
                    <asp:ListItem>student</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
&nbsp;<asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCancel" runat="server" Text="CANCEL" />
&nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password ?" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>

<p>
    &nbsp;</p>

