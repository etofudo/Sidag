<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="LibraryNews.aspx.cs" Inherits="LibraryNews" %>

<%@ Register src="include/LibraryNews.ascx" tagname="LibraryNews" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:LibraryNews ID="LibraryNews1" runat="server" />
    </form>
</asp:Content>

