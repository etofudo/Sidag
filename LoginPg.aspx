<%@ Page Title="ANCHOR USER LOGIN" Language="C#" MasterPageFile="~/lgnMasterPage.master" AutoEventWireup="true" CodeFile="LoginPg.aspx.cs" Inherits="LoginPg" %>

<%@ Register src="Login.ascx" tagname="Login" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Login ID="Login1" runat="server" />
</asp:Content>



