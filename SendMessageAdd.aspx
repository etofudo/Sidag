<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="SendMessageAdd.aspx.cs" Inherits="SendMessageAdd" %>

<%@ Register src="include/SendMessageAdd.ascx" tagname="SendMessageAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:SendMessageAdd ID="SendMessageAdd1" runat="server" />
    </form>
</asp:Content>

