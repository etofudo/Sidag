<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bookpurchaseview.ascx.cs" Inherits="include_bookpurchaseview" %>
<table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="872px" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="BookPurchaseID" HeaderText="Purchase ID" />
                    <asp:BoundField DataField="BookID" HeaderText="Book Name" />
                    <asp:BoundField DataField="BookCatID" HeaderText="Book Category" />
                    <asp:BoundField DataField="BookPrice" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%# Bind("BookPurchaseID") %>' CommandName="Edit">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="BookPricePaid" HeaderText="Book Price Paid" />
                    <asp:BoundField DataField="BookPriceLeft" HeaderText="Book Price Left" />
                    <asp:BoundField DataField="NoOfBookPurchased" HeaderText="No Of Books Purchased" />
                    <asp:BoundField DataField="BookVendorID" HeaderText="Book Vendor" />
                    <asp:BoundField DataField="YearPublished" HeaderText="Year Published" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

