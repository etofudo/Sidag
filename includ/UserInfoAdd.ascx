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

<table style="width:100%;background-color:#ffffff" class="auto-styleT5">
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
        <td class="auto-styleTTTT1">Department:<asp:TextBox ID="txtp" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Matric. Number:<asp:TextBox ID="txted" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Staff ID:<asp:TextBox ID="TextBox3" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Email:<asp:TextBox ID="TextBox1" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Phone Number:<asp:TextBox ID="TextBox2" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Gender:<label class="cont"><input type="radio" name="g"><span class="checkmak"></span>Male</label><label class="cont"><input type="radio" name="g"><span class="checkmak"></span>Female</label>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Password:<asp:TextBox ID="txty" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">Confirm Password:<asp:TextBox ID="txtpc" runat="server" Width="426px" CssClass="auto-styleTT1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-styleTTTT1">
            <asp:Button ID="btnSub" runat="server" Text="Submit" CssClass="styleTemi4" />
            <asp:Button ID="btnCan" runat="server" Text="Cancel" CssClass="styleTemi4"/>
        </td>
    </tr>
</table>
