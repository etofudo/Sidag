<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="OtherItemsAddPg.aspx.cs" Inherits="OtherItemsAddPg" %>

<%@ Register src="include/OtherItemsAdd.ascx" tagname="OtherItemsAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:OtherItemsAdd ID="OtherItemsAdd1" runat="server" />
    </form>
</asp:Content>

