<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="ShelfCategoryAddPg.aspx.cs" Inherits="ShelfCategoryAddPg" %>

<%@ Register src="include/ShelfCategoryAdd.ascx" tagname="ShelfCategoryAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:ShelfCategoryAdd ID="ShelfCategoryAdd1" runat="server" />
    </form>
</asp:Content>

