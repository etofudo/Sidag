<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="clearedstudent.aspx.cs" Inherits="clearedstudent" %>

<%@ Register src="include/clearedstudents.ascx" tagname="clearedstudents" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <uc1:clearedstudents ID="clearedstudents1" runat="server" />
</form>
</asp:Content>

