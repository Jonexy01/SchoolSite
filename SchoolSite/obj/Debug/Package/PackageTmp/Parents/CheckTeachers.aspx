<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckTeachers.aspx.cs" Inherits="SchoolSite.Parents.CheckTeachers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 align="center">Check teachers</h1>
        <span>Class </span>
        <asp:DropDownList ID="ClassDropDownList" runat="server" Height="16px" 
            Width="151px">
        </asp:DropDownList><br />
        <asp:Button ID="Button1" runat="server" Text="Check teacher" onclick="Button1_Click" />
        <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="ResponseLabel" runat="server" Text=""></asp:Label><br /></asp:Panel>
    </div>
    </form>
</body>
</html>
