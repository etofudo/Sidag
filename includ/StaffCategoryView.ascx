<%@ Control Language="C#" AutoEventWireup="true" CodeFile="StaffCategoryView.ascx.cs" Inherits="include_StaffCategory_view" %>

<p>
    <asp:Image ID="Image1" runat="server" Height="106px" ImageUrl="~/images/lib.jpg" Width="333px" />
</p>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="275px" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="StaffCategoryID" HeaderText="CategoryID" />
         <asp:TemplateField>
                <ItemTemplate>
               <asp:LinkButton ID="LinkButton1" runat="server" 
           CommandArgument='<%# Bind("StaffCategoryID")%>' CommandName="Edit">Edit</asp:LinkButton>
             </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="StaffCategoryDescription" HeaderText="StaffCategory" />
        <asp:BoundField DataField="CreatedDate" HeaderText="Date " /> 
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

