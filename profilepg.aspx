<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="profilepg.aspx.cs" Inherits="profilepg" %>

<%@ Register src="include/profile.ascx" tagname="profile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:profile ID="profile1" runat="server" />
    </form>
</asp:Content>

