<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="RoleAddPg.aspx.cs" Inherits="RoleAddPg" %>

<%@ Register src="include/RoleAdd.ascx" tagname="RoleAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:RoleAdd ID="RoleAdd1" runat="server" />
    </form>
</asp:Content>

