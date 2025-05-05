<%@ Page Language="C#" AutoEventWireup="true" CodeFile="plya.aspx.cs" Inherits="plya" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <style>  
    /*input[type=radio] {  
        display: none;  
    }  /*/
      
    input[type=radio]+label:before {  
        font-family: FontAwesome;  
        display: inline-block;  
    }  
    /* radio1 */  
    /* unchecked icon */  
      
    .radio1 input[type=radio]+label:before {  
        content: "\f1db";  
        letter-spacing: 10px;  
    }  
    /* checked icon */  
      
    .radio1 input[type=radio]:checked+label:before {  
        letter-spacing: 5px;  
        content: "\f192";  
    }  
</style>  


<asp:RadioButtonList ID="RadioButtonList1" runat="server">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:RadioButtonList>
    </div>
    </form>
</body>
</html>
