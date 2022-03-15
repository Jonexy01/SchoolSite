<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteTeacher.aspx.cs" Inherits="SchoolSite.Admin.DeleteTeacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Delete teacher</h1>
        <span>Name </span>
        <asp:DropDownList ID="NameDropDownList" runat="server" Width="179px">
        </asp:DropDownList><br />
        <asp:Button ID="Button1" runat="server" Text="Delete teacher" 
            onclick="Button1_Click" /><asp:Label ID="ResponseLabel" runat="server"
            Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
