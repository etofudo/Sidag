<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="UserCategoryAddPg.aspx.cs" Inherits="include_UserCategoryAddPg" %>

<%@ Register src="UserCategory.ascx" tagname="UserCategory" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:UserCategory ID="UserCategory1" runat="server" />
    </form>
</asp:Content>

