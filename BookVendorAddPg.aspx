<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookVendorAddPg.aspx.cs" Inherits="BookVendorAddPg" %>

<%@ Register src="include/BookVendorAdd.ascx" tagname="BookVendorAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookVendorAdd ID="BookVendorAdd1" runat="server" />
    </form>
</asp:Content>

