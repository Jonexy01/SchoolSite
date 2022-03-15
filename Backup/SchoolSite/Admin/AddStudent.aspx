<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="SchoolSite.Admin.AddStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 align="center">Add student</h1>
        <span>First Name </span><asp:TextBox ID="FNameTextBox" runat="server"></asp:TextBox><br />
        <span>Last Name </span><asp:TextBox ID="LNameTextBox" runat="server"></asp:TextBox><br />
        <span>Result </span><asp:TextBox ID="ResultTextBox" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
        <asp:Label ID="ResponseLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
