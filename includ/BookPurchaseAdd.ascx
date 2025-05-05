<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookPurchaseAdd.ascx.cs" Inherits="include_BookPurchaseAdd" %>

<style type="text/css">
    .styleT1 {
        width: 111px;
    }
    .auto-styleT2 {
        border: 1px solid #222222;
        padding: 1px 4px;
        background-color: #dfdfdf;
        border-radius: 7px 7px;
    }
    .auto-styleT3 {
        padding: 3px 6px;
    }
     .styleTemi4 {
        display:inline;
        color: #b4ec85;
        border: 0px outset #75aB54;
        background-color: #656565;
        border-radius: 4px 4px;
        margin-right:3px;
        width:100px;
        height:30px;
    }
    .auto-styleT5 {
        border: 1px solid #669900;
        border-bottom:none;
        padding: 1px 4px;
        border-radius: 10px 10px;
    }
    .auto-styleT7 {
        height: 23px;
        color: #b4ec85;
        text-align: center;
        background-color: #656565;
    }
    .auto-styleT1 {
        width: 190px;
        border-right:none;
    }
    .auto-styleTT1 {
        margin-right:350px;
        border-style: solid;
        border-width: 1px;
        padding: 5px 10px;
        border-color:#454545;
        border-radius:6px 6px;
    }
    .auto-styleTT1:focus{
        border-color:#cccccc;
    }
    .auto-styleTTT1 {
        width: 150px;
        border-right-style: none;
        border-right:none;
        border-right-width: medium;
    }
    .auto-styleTTTT1 {
        border-right-style: none;
        border-right-width: medium;
        border-right-style: none;
        border-right-color: inherit;
    }
</style>

<table style="width:100%;background-color:#ffffff" class="auto-styleT5">
    <tr>
        <td class="auto-styleT7">REGISTER&nbsp; BOOK&nbsp; PURCHASE</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="txtMessage" runat="server" CssClass="auto-styleT2"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Book Vendor:<asp:DropDownList ID="ddlVendor" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Book Category:<asp:DropDownList ID="ddlBookCategory" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Book Description:<asp:TextBox ID="txtBookName" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Number of Book Purchased:<asp:TextBox ID="txtNoOfBookPurchased" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Book Price:<asp:TextBox ID="txtBookPrice" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Price Paid:<asp:TextBox ID="txtBookPricePaid" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Price Remaining:<asp:TextBox ID="txtBookPriceLeft" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Date Purchased:<asp:TextBox ID="txtDatePurchased" runat="server" Width="426px" CssClass="auto-styleTT1" TextMode="Date"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Button ID="btnSub" runat="server" Text="Submit" CssClass="styleTemi4" />
            <asp:Button ID="btnCan" runat="server" Text="Cancel" CssClass="styleTemi4"/>
        </td>
    </tr>
</table>