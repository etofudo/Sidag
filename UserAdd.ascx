<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserAdd.ascx.cs" Inherits="include_UserAdd" %>

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
        outline-style:none;
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
<style>
	
		/* Customize the label (the container) */
.cont {
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.cont input {
  position: absolute;
  opacity: 0;
}

/* Create a custom radio button */
.checkmak {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.cont:hover input ~ .checkmak {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.cont input:checked ~ .checkmak {
  background-color: #94cc65;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmak:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.cont input:checked ~ .checkmak:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.cont .checkmak:after {
  top: 9px;
  left: 9px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: white;
}
	
	</style>

<div id="loginn" style="width:100%;height:930px;background-image:url('images/demo/backgrounds/imejio.png');margin:0px 0px 0px 0px;">
    <MARQUEee style="color:#ffffff;font-size:50px;margin-left:200px" >ANCHOR  UNIVERSITY  REGISTER PAGE</MARQUEee>
    <table style="width:350px; height:300PX; margin:70px 350px auto 350px;background-color:#ffffff;opacity:0.9" class="auto-styleT5">
        <tr>
            <td class="auto-styleT7">REGISTER&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">
                <asp:Label ID="bkaddlab" runat="server" CssClass="auto-styleT2" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Firstname:<asp:TextBox ID="txtt" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Surname:<asp:TextBox ID="txta" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Department:<asp:DropDownList ID="ddld" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:DropDownList>
        </tr>
        
        <tr>
            <td class="auto-styleTTTT1">Matric. Number:<asp:TextBox ID="txted" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Staff ID:<asp:TextBox ID="txtst" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Email:<asp:TextBox ID="txtem" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Role:<asp:DropDownList ID="ddlr" runat="server" Width="426px" CssClass="auto-styleTT1">
                <asp:ListItem Value="1">Regular User</asp:ListItem>
                <asp:ListItem Value="2">Admin</asp:ListItem>
                </asp:DropDownList>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Phone Number:<asp:TextBox ID="txtph" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Upload Image:<asp:FileUpload ID="FileUpload1" runat="server" Width="426px" CssClass="auto-styleTT1"/>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Gender:<label class="cont"><input type="radio" name="g"><span class="checkmak"></span>Male</label><label class="cont"><input type="radio" name="g"><span class="checkmak"></span>Female</label>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Password:<asp:TextBox ID="txty" runat="server" Width="426px" CssClass="auto-styleTT1" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">Confirm Password:<asp:TextBox ID="txtpc" runat="server" Width="426px" CssClass="auto-styleTT1" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-styleTTTT1">
                <asp:Button ID="btnSub" runat="server" Text="Submit" CssClass="styleTemi4" OnClick="btnSub_Click" />
                <asp:Button ID="btnCan" runat="server" Text="Cancel" CssClass="styleTemi4"/>
            </td>
        </tr>
        <tr><td><a href="LoginPg.aspx" style="color:#457B34">Login</a></td></tr>
    </table>
</DIV>