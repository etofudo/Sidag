<%@ Control Language="C#" AutoEventWireup="true" CodeFile="requestview.ascx.cs" Inherits="include_requestview" %>

<style>
    .oke{
        display:block;
    }
    </style>
<div class="ode" style="float:left">
    <asp:Label ID="Gen" runat="server" CssClass="oke">LIST  OF  REGISTERED  BOOKS</asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="ID Number" />
            <asp:BoundField DataField="BookName" HeaderText="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" />
            <asp:BoundField DataField="Edition" HeaderText="Edition" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" />
            <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%#Bind("BookID")%>' CommandName="Edit">Edit</asp:LinkButton>
                        </ItemTemplate>
            </asp:TemplateField>
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
    
</div>
<div style="margin-left:500px">
    &nbsp;</div>
