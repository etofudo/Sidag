<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LibStudentClearanceAdd.ascx.cs" Inherits="include_LibStudentClearanceAdd" %>
<style type="text/css">


    .auto-style1 {
        height: 23px;
    }
    .auto-style2 {
        height: 5px;
    }
    #TextArea2 {
        height: 71px;
        width: 184px;
    }
    #TextArea1 {
        height: 36px;
        width: 184px;
    }
    </style>

<p style="margin-left: 200px">
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#660033" Text="STUDENT CLEARANCE "></asp:Label>
</p>
<table style="width: 100%; margin-bottom: 0px;">
    <tr>
        <td>
            &nbsp;</td>
        <td>
    <asp:Label ID="txtMessasge" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Matric Number" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMatNo" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label9" runat="server" Text="Status" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:DropDownList ID="ddlStatus" runat="server" Height="47px" Width="186px">
                <asp:ListItem>Pending </asp:ListItem>
                <asp:ListItem>Cleared</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text=" Date Cleared" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtDateCleared" runat="server" Width="178px"></asp:TextBox>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Details" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtDetails" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label6" runat="server" Text="Comment" Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" BackColor="#CCCCFF" ForeColor="Green" Text="Submit" Width="58px" OnClick="Button1_Click" />&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#CCCCFF" ForeColor="Blue" Text="Reset" Width="47px" /> &nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#CCCCFF" ForeColor="Red" Text="Cancel" Width="53px" />&nbsp; &nbsp;
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>

<p>
    &nbsp;</p>




