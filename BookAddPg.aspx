<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookAddPg.aspx.cs" Inherits="BookAddPg" %>

<%@ Register src="include/BookAdd.ascx" tagname="BookAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookAdd ID="BookAdd1" runat="server" />
    </form>
</asp:Content>

