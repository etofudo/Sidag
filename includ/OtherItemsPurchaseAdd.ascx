<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OtherItemsPurchaseAdd.ascx.cs" Inherits="include_OtherItemsPurchaseAdd" %>
<style type="text/css">


    .auto-style1 {
        width: 234px;
    }
    .auto-style2 {
        width: 234px;
        height: 26px;
    }
    .auto-style3 {
        height: 26px;
    }
</style>
<table style="width:100%;">
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>

<asp:Label ID="Label1" runat="server" Text="ITEM PURCHASED INFORMATION"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
<asp:Label ID="txtMessaage" runat="server"></asp:Label>


        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="157px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Text="Item Category"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlItemCategory" runat="server" Height="19px" Width="164px">
                <asp:ListItem>Select here</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="txtauthor" runat="server" Text="Item Price"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtItemPrice" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="txtauthor0" runat="server" Text="Item Price Paid"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtItemPricePaid" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="txtauthor1" runat="server" Text="Item Price Left"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtItemPriceLeft" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label7" runat="server" Text="Year Published"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtYearPublished" runat="server" style="margin-right: 2px" Width="160px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label9" runat="server" Text="Number of Item(s) Purchased"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtNoOfItemPurchased" runat="server" style="margin-right: 2px" Width="160px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Vendor"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlVendor" runat="server" Height="33px" Width="164px">
                <asp:ListItem>Select here...</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="27px" BackColor="#CCCCFF" BorderColor="Green" BorderStyle="Solid" ForeColor="Green" OnClick="Button1_Click" />&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Height="26px" Text="Cancel" Width="55px" BackColor="#CCCCFF" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />

