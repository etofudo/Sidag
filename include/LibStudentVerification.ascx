<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LibStudentVerification.ascx.cs" Inherits="include_LibStudentVerification" %>

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
        <td class="auto-styleT7">STUDENT&nbsp;&nbsp; CLEARANCE VERIFICATION</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="txtMessage" runat="server" CssClass="auto-styleT2"></asp:Label>
        </td>
    </tr>

    <tr>
        <td class="auto-style1">Matric Number:<asp:TextBox ID="txtMatNo" runat="server" Width="100%" Height="40px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="styleTemi4" OnClick="btnSearch_Click" />
        </td>
    </tr>

    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField HeaderText="Name" DataField="name" />
                    <asp:BoundField HeaderText="Mat No" DataField="matno" />
                    <asp:BoundField HeaderText="Email" DataField="email" />
                    <asp:BoundField HeaderText="Gender" DataField="gender" />
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
    </tr>
    
    <tr>
        <td class="auto-style1">Comments:<asp:TextBox ID="txtComment" runat="server" Width="100%" CssClass="auto-styleTT1" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Button ID="btnVerify" runat="server" CssClass="styleTemi4" OnClick="btnVerify_Click" Text="Clear Student" />
        </td>
    </tr>
</table>