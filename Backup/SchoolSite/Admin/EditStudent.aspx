<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="SchoolSite.Admin.EditStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Update Student</h1>
        <span>Student(first name) </span>
        <asp:DropDownList ID="FNameDropDownList" runat="server" Height="16px" Width="158px">
        </asp:DropDownList><br />
        <span>Result </span>
        <asp:TextBox ID="ResultTextBox" runat="server" style="margin-left: 77px"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Edit result" onclick="Button1_Click" /><asp:Label ID="ResponseLabel" runat="server"
            Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
