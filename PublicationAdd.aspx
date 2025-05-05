<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="PublicationAdd.aspx.cs" Inherits="PublicationAdd" %>

<%@ Register src="include/PublicationAdd.ascx" tagname="PublicationAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:PublicationAdd ID="PublicationAdd1" runat="server" />
    </form>
</asp:Content>

