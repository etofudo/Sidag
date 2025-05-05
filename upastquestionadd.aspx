<%@ Page Title="" Language="C#" MasterPageFile="~/StdMasterPage.master" AutoEventWireup="true" CodeFile="upastquestionadd.aspx.cs" Inherits="upastquestionadd" %>

<%@ Register src="include/PastQuestionAdd.ascx" tagname="PastQuestionAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:PastQuestionAdd ID="PastQuestionAdd1" runat="server" />
    </form>
</asp:Content>

