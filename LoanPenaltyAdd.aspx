<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="LoanPenaltyAdd.aspx.cs" Inherits="LoanPenaltyAdd" %>

<%@ Register src="include/LoanPenalty.ascx" tagname="LoanPenalty" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:LoanPenalty ID="LoanPenalty1" runat="server" />
    </form>
</asp:Content>

