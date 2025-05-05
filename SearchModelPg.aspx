<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="SearchModelPg.aspx.cs" Inherits="SearchModelPg" %>

<%@ Register src="include/SearchModel.ascx" tagname="SearchModel" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:SearchModel ID="SearchModel1" runat="server" />
    </form>
</asp:Content>

