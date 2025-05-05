<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookRequestAddPg.aspx.cs" Inherits="BookRequestAdd" %><%@ Register src="include/BookRequestAdd.ascx" tagname="BookRequestAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookRequestAdd ID="BookRequestAdd1" runat="server" />
    </form>
</asp:Content>

