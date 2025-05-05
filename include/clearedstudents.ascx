<%@ Control Language="C#" AutoEventWireup="true" CodeFile="clearedstudents.ascx.cs" Inherits="include_clearedstudents" %>

<style>
    .oke{
        display:block;
    }
    </style>
<div class="ode" style="float:left">
    <asp:Label ID="Gen" runat="server" CssClass="oke">LIST  OF  CLEARED  STUDENTS</asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="LibraryStudedntClearanceID" HeaderText="ID Number" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="MatriculationNumber" HeaderText="Matric. Number" />
            <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%#Bind("LibUserID")%>' CommandName="Edit">Edit</asp:LinkButton>
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
