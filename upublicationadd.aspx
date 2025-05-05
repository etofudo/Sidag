<%@ Page Title="" Language="C#" MasterPageFile="~/StdMasterPage.master" AutoEventWireup="true" CodeFile="upublicationadd.aspx.cs" Inherits="upublicationadd" %>

<%@ Register src="include/PublicationAdd.ascx" tagname="PublicationAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:PublicationAdd ID="PublicationAdd1" runat="server" />
    </form>
</asp:Content>

