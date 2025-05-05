<%@ Page Title="ANCHOR USER REGISTER" Language="C#" MasterPageFile="~/lgnMasterPage.master" AutoEventWireup="true" CodeFile="UserAddPg.aspx.cs" Inherits="UserAddPg" %>

<%@ Register src="UserAdd.ascx" tagname="UserAdd" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <uc1:UserAdd ID="UserAdd1" runat="server" />

</asp:Content>

