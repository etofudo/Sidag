<%@ Page Title="" Language="C#" MasterPageFile="~/StfMasterPage.master" AutoEventWireup="true" CodeFile="OtherItemPurchaseAdd.aspx.cs" Inherits="OtherItemPurchaseAdd" %>

<%@ Register src="include/OtherItemsPurchase.ascx" tagname="OtherItemsPurchase" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:OtherItemsPurchase ID="OtherItemsPurchase1" runat="server" />
    </form>
</asp:Content>

