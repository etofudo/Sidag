<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="BookCatAddPg.aspx.cs" Inherits="LMSpgs_BookCatAddPg" %>



<%@ Register src="include/BookCatAdd.ascx" tagname="BookCatAdd" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:BookCatAdd ID="BookCatAdd1" runat="server" />
    </form>
</asp:Content>

