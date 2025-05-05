<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="UserView.aspx.cs" Inherits="UserView" %>

<%@ Register src="include/staffview.ascx" tagname="staffview" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:staffview ID="staffview1" runat="server" />
    </form>
</asp:Content>

