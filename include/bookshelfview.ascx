<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bookshelfview.ascx.cs" Inherits="include_bookshelfview" %>
<asp:Label ID="txtMessage" runat="server"></asp:Label>
<asp:GridView ID="bookshelgGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Height="191px" HorizontalAlign="Center" Width="428px" OnRowCommand="bookshelgGridView_RowCommand">
    <Columns>
        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                   CommandArgument='<%# Bind("BookShelfID") %>' CommandName="Edit">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
        <asp:BoundField HeaderText="Shelf Name" DataField="shelfname" />
        <asp:BoundField HeaderText="Shelf Category" DataField="shelfcat" />

        <asp:BoundField HeaderText="Date Created" DataField="date" />
    </Columns>
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>

