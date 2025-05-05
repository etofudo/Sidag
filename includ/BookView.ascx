<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookView.ascx.cs" Inherits="include_BookView" %>
<style>
    .oke{
        display:block;
    }
    .auto-style1 {
        width: 720px;
        height: 384px;
    }
</style>
<div class="ode" style="float:left">
    <asp:Label ID="Gen" runat="server" CssClass="oke">LIST  OF  REGISTERED  BOOKS</asp:Label>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
</div>
<div style="margin-left:500px">
    <asp:Label ID="vimlab" runat="server" CssClass="oke"></asp:Label>
    <img alt="hol" style="height:180px;width:200px" class="auto-style1" src="../ano.png" />
</div>

