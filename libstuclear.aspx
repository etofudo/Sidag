<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="libstuclear.aspx.cs" Inherits="libstuclear" %>

<%@ Register src="include/LibraryStudentClearance.ascx" tagname="LibraryStudentClearance" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:LibraryStudentClearance ID="LibraryStudentClearance1" runat="server" />
    </form>
</asp:Content>

