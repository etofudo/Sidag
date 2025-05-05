<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginPg.ascx.cs" Inherits="include_LoginPg" %>
<style>
    .fomContena{
        margin:10px 90px auto 90px;
    }
    .fmlabe{
        margin:auto 0px auto auto;
    }
    #TextBox1, TextBox2{
        margin-left:30px;
    }
</style>
<body>
    <div class="fomContena">
        <form id="loginFm">

            <div class="fieldRow" type="block"><asp:Label ID="Label1" runat="server" Text="Login"></asp:Label></div>
            <div class="fieldRow" type="block"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></div>
            <div class="fieldRow" type="block"><asp:Label ID="Label2" runat="server" Text="Email" CssClass="fmlabe"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
            <div class="fieldRow" type="block"><asp:Label ID="Label4" runat="server" Text="Password" CssClass="fmlabe"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>
            <div class="fieldRow" type="block"><asp:Button ID="btnLg" runat="server" Text="Login" /><asp:Button ID="btnCl" runat="server" Text="Cancel" />
                <asp:Button ID="btnSu" runat="server" Text="Sign Up" />
            </div>
        </form>
    </div>
</body>