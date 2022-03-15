<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditTeacher.aspx.cs" Inherits="SchoolSite.Admin.EditTeacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Edit teacher</h1>
        <span>Name </span>
        <asp:DropDownList ID="NameDropDownList" runat="server" Height="16px" 
            style="margin-left: 89px" Width="141px">
        </asp:DropDownList><br />
        <span>Employment number </span>
        <asp:TextBox ID="EnumberTextBox" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" /><asp:Label ID="ResponseLabel" runat="server"
            Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
