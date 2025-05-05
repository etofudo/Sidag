<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookPurchaseAdd.aspx.cs" Inherits="BookPurchaseAdd" %>

<%@ Register src="include/BookPurchaseAdd.ascx" tagname="BookPurchaseAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookPurchaseAdd ID="BookPurchaseAdd1" runat="server" />
    </form>
</asp:Content>

