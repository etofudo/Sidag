<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="DepartmentAddPg.aspx.cs" Inherits="DepartmentAddPg" %>

<%@ Register src="include/DepartmentAdd.ascx" tagname="DepartmentAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:DepartmentAdd ID="DepartmentAdd1" runat="server" />
    </form>
</asp:Content>

