<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentWelcome.aspx.cs" Inherits="SchoolSite.Teachers.TeacherWelcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 align="center">Welcome Parent</h1>
        <p><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Parents/CheckResult.aspx">Check your child's result</asp:LinkButton></p>
        <p><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Parents/CheckTeachers.aspx">Check teachers</asp:LinkButton></p>
    </div>
    </form>
</body>
</html>
