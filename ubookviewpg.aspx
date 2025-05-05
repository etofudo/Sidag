<%@ Page Title="" Language="C#" MasterPageFile="~/StdMasterPage.master" AutoEventWireup="true" CodeFile="ubookviewpg.aspx.cs" Inherits="ubookviewpg" %>

<%@ Register src="include/BookView.ascx" tagname="BookView" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <uc1:BookView ID="BookView1" runat="server" />
</form>
</asp:Content>

