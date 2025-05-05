<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookLoanAddPg.aspx.cs" Inherits="BookLoanAddPg" %>

<%@ Register src="include/BookLoanAddPg.ascx" tagname="BookLoanAddPg" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookLoanAddPg ID="BookLoanAddPg1" runat="server" />
    </form>
</asp:Content>

