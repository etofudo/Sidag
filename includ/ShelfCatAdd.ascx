<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShelfCatAdd.ascx.cs" Inherits="include_ShelfCatAdd" %>
<style type="text/css">

    .auto-style15 {
        width: 135px;
        height: 45px;
    }
    .auto-style16 {
        width: 135px;
        height: 23px;
    }
    .auto-style17 {
        width: 135px;
        height: 36px;
    }
    .auto-style18 {
        width: 168px;
        height: 45px;
    }
    .auto-style19 {
        width: 168px;
        height: 23px;
    }
    .auto-style20 {
        width: 168px;
        height: 36px;
    }
</style>
<div style="margin-left: 150px">
    &nbsp; &nbsp;
    <asp:Label ID="Label3" runat="server" BackColor="White" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#993366" Text="SHELF CATEGORY"></asp:Label>
    <br />
</div>
<table style="width:75%;">
    <tr>
        <td class="auto-style18">
            <asp:Label ID="Label1" runat="server" Text="Shelf Category Name " Font-Bold="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox1" runat="server" Width="159px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style19"></td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style17">
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="27px" BackColor="#CCCCFF" BorderColor="Green" BorderStyle="Solid" ForeColor="Green" />&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Height="26px" Text="Cancel" Width="55px" BackColor="#CCCCFF" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" />
        </td>
    </tr>
</table>

<asp:Label ID="Label2" runat="server"></asp:Label>




