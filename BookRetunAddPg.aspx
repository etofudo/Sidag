<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookRetunAddPg.aspx.cs" Inherits="BookRetunAddPg" %>

<%@ Register src="include/BookReturnAdd.ascx" tagname="BookReturnAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookReturnAdd ID="BookReturnAdd1" runat="server" />
    </form>
</asp:Content>

