<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pla.ascx.cs" Inherits="include_pla" %>

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
</asp:RadioButtonList>
  


