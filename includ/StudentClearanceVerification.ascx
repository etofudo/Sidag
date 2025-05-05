<%@ Control Language="C#" AutoEventWireup="true" CodeFile="StudentClearanceVerification.ascx.cs" Inherits="include_StudentClearanceVerification" %>
<style type="text/css">

    .auto-style1 {
        height: 33px;
    }
</style>

<table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Larger" ForeColor="#660033" Text="STUDENT CLEARANCE VERIFICATION"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="txtMessage" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#660033" Text="Matric Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMatNo" runat="server" Height="24px" Width="203px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Button ID="btnSearch" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#660033" Text="Search" OnClick="btnSearch_Click" />
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:GridView ID="StudentDetails" runat="server" Height="115px" Width="500px" AutoGenerateColumns="False" CellSpacing="5" HorizontalAlign="Left">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                    <asp:BoundField DataField="fine" HeaderText="Fine" />
                    <asp:BoundField DataField="dept" HeaderText="Department" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="book" HeaderText="Book Name" />
                    <asp:BoundField DataField="loandate" HeaderText="Loan Date" />
                    <asp:BoundField DataField="duedate" HeaderText="Due Date" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="btnVerify" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#660033" OnClick="btnVerify_Click" />
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>


