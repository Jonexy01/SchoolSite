<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditClass.aspx.cs" Inherits="SchoolSite.Admin.EditClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Edit teachers classes and subjects</h1>
        <span>Teacher </span>
        <asp:DropDownList ID="NameDropDownList" runat="server" Height="16px" 
            Width="127px" style="margin-left: 18px">
        </asp:DropDownList><br />
        <span>Class </span>
        <asp:TextBox ID="ClassTextBox" runat="server" style="margin-left: 36px"></asp:TextBox><br />
        <span>Subject </span>
        <asp:TextBox ID="SubjectTextBox" runat="server" style="margin-left: 22px"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Add" onclick="AddButton_Click" />
        <asp:Button ID="Button2"
            runat="server" Text="Delete" style="margin-left: 24px" 
            onclick="DeleteButton_Click" />
        <br />
        <asp:Label ID="ResponseLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
