<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookShelfAddPg.aspx.cs" Inherits="BookShelfAddPg" %>

<%@ Register src="include/BookShelfAdd.ascx" tagname="BookShelfAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookShelfAdd ID="BookShelfAdd1" runat="server" />
    </form>
</asp:Content>

