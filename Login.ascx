<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Login" %>

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
        margin-right:40px;
        margin-left:40px;
        margin:10px 40px 7px 40px;
        width:100px;
        height:30px;
    }
    .auto-styleT5 {
        border: 1px solid #669900;
        padding: 1px 4px;
        border-radius: 10px 10px;
    }
    .auto-styleT7 {
        height: 56px;
        color: #b4ec85;
        text-align: center;
        background-color: #656565;
    }
    .auto-styleT1 {
        width: 190px;
        border-right:none;
    }
    .auto-styleTT1 {
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
    .auto-style1{
        border-top:14px;
    }

    

</style>


<div id="loginn" style="width:100%;height:770px;background-image:url('images/demo/backgrounds/imejio.png');margin:0px 0px 0px 0px;">
    <MARQUEee style="color:#ffffff;font-size:50px;margin-left:200px" >ANCHOR  UNIVERSITY  USER  LOGIN</MARQUEee>
    <table style="width:200px; height:300PX; margin:70px 350px auto 350px;background-color:#ffffff;opacity:0.9" class="auto-styleT5">
        <tr>
            <td class="auto-styleT7" style="border-radius: 9px 9px;">LOGIN</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="bkaddlab" runat="server" CssClass="auto-styleT2" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="border-top:14px">Email:<asp:TextBox ID="txte" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="border-top:14px">Password:<asp:TextBox ID="txtp" runat="server" Width="426px" CssClass="auto-styleTT1" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnSub" runat="server" Text="Submit" CssClass="styleTemi4" OnClick="btnSub_Click"/>
                <asp:Button ID="btnCan" runat="server" Text="Cancel" CssClass="styleTemi4"/>
                
            </td>
        </tr>
        <tr><td><a href="UserAddPg.aspx" style="color:#457B34">Register</a></td></tr>
    </table>
    
</div>