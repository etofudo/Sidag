<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="studentclearanceverification.aspx.cs" Inherits="studentclearanceverification" %>

<%@ Register src="include/LibStudentVerification.ascx" tagname="LibStudentVerification" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <uc1:LibStudentVerification ID="LibStudentVerification1" runat="server" />
</form>
</asp:Content>

