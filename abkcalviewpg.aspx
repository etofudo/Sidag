<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="abkcalviewpg.aspx.cs" Inherits="abkcalviewpg" %>

<%@ Register src="include/bookcategoryview.ascx" tagname="bookcategoryview" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:bookcategoryview ID="bookcategoryview1" runat="server" />
    </form>
</asp:Content>

