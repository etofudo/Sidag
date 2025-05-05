<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="PastQuestionAdd.aspx.cs" Inherits="PastQuestionAdd" %>

<%@ Register src="include/PastQuestionAdd.ascx" tagname="PastQuestionAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:PastQuestionAdd ID="PastQuestionAdd1" runat="server" />
    </form>
</asp:Content>

