<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PublicationAdd.ascx.cs" Inherits="include_PublicationAdd" %>

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
        <td class="auto-styleT7">REGISTER&nbsp; PUBLICATION</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="bkaddlab" runat="server" CssClass="auto-styleT2"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Title:<asp:TextBox ID="TextBox2" runat="server" Width="100%" Height="40px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td class="auto-style1">Author:<asp:TextBox ID="TextBox1" runat="server" Width="100%" Height="40px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Year:<asp:TextBox ID="TextBox3" runat="server" Width="100%" Height="40px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Button ID="btnSub" runat="server" Text="Submit" CssClass="styleTemi4" OnClick="btnSub_Click" />
            <asp:Button ID="btnCan" runat="server" Text="Cancel" CssClass="styleTemi4"/>
        </td>
    </tr>
</table>