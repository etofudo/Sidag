<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Home.ascx.cs" Inherits="include_Home" %>
<h3> Administrator's menu</h3>
<table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem Text="News" Value="New Item" NavigateUrl="~/include/LibraryNewsAdd.ascx">
                        <asp:MenuItem Text="View News" Value="New Item"></asp:MenuItem>
                        <asp:MenuItem Text="Add News" Value="Add News"></asp:MenuItem>
                        <asp:MenuItem Text="Search News" Value="Search News"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LSU/studentadd.aspx" Text="student" Value="student">
                        <asp:MenuItem Text="Add Student" Value="Add Student"></asp:MenuItem>
                        <asp:MenuItem Text="View Student" Value="View Student"></asp:MenuItem>
                        <asp:MenuItem Text="Seacrch  Student" Value="Seacrch  Student"></asp:MenuItem>
                        <asp:MenuItem Text="Generate Pin" Value="Generate Pin"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LSU/staffadd.aspx" Text="staff" Value="staff">
                        <asp:MenuItem Text="Staff Category" Value="Staff Category"></asp:MenuItem>
                        <asp:MenuItem Text="Add staff" Value="Add staff"></asp:MenuItem>
                        <asp:MenuItem Text="View Staff" Value="View Staff"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LSU/bookadd.aspx" Text="Books" Value="Books">
                        <asp:MenuItem Text=" Add Book Category" Value=" Add Book Category"></asp:MenuItem>
                        <asp:MenuItem Text="View Book Category" Value="View Book Category"></asp:MenuItem>
                        <asp:MenuItem Text="Add Book" Value="Add Book"></asp:MenuItem>
                        <asp:MenuItem Text="View Book" Value="View Book"></asp:MenuItem>
                        <asp:MenuItem Text="Search Book" Value="Search Book"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LSU/bookvendoradd.aspx" Text="vendor" Value="vendor">
                        <asp:MenuItem Text="Search Vendor" Value="Search Vendor"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Project" Value="Project">
                        <asp:MenuItem Text="Add Project" Value="Add Project"></asp:MenuItem>
                        <asp:MenuItem Text="View Project" Value="View Project"></asp:MenuItem>
                        <asp:MenuItem Text="Search Project" Value="Search Project"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Library Clearance" Value="Student Clearance">
                        <asp:MenuItem Text="Search student" Value="Search student"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Book Return" Value="Book Return">
                        <asp:MenuItem Text="Add Book Returned" Value="New Item"></asp:MenuItem>
                        <asp:MenuItem Text="View Book Returned" Value="View Book Returned"></asp:MenuItem>
                        <asp:MenuItem Text="Search Book Returned" Value="Search Book Returned"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

