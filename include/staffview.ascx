<%@ Control Language="C#" AutoEventWireup="true" CodeFile="staffview.ascx.cs" Inherits="include_staffview" %>
<style type="text/css">
    .auto-styleT1 {
        height: 28px;
    }
    .auto-styleT2 {
        width: 145px;
    }
    .auto-styleT3 {
        height: 28px;
        width: 145px;
    }
    .auto-styleT4 {
        width: 837px;
    }
    .auto-styleT5 {
        height: 28px;
        width: 837px;
    }
</style>

<table style="width:100%;">
    <tr>
        <td class="auto-styleT2">&nbsp;</td>
        <td class="auto-styleT4">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" style="margin-left: 5px" Width="827px" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="LibUserID" HeaderText="ID Number" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%#Bind("LibUserID")%>' CommandName="Edit">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="StaffID" HeaderText="Staff ID" />
                    <asp:BoundField DataField="MatriculationNumber" HeaderText="Matric. Number" />
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
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-styleT3"></td>
        <td class="auto-styleT5"></td>
        <td class="auto-styleT1"></td>
    </tr>
    <tr>
        <td class="auto-styleT2">&nbsp;</td>
        <td class="auto-styleT4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

