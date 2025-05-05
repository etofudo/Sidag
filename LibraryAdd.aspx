<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="LibraryAdd.aspx.cs" Inherits="LibraryAdd" %>

<%@ Register src="include/LibraryAdd.ascx" tagname="LibraryAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:LibraryAdd ID="LibraryAdd1" runat="server" />
    </form>
</asp:Content>

