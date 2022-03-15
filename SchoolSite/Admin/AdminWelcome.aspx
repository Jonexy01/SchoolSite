<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminWelcome.aspx.cs" Inherits="SchoolSite.Admin.AdminWelcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Welcome admin</h1>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/Admin/AddStudent.aspx">Add Student  </asp:LinkButton>&nbsp
            <asp:LinkButton
                ID="LinkButton2" runat="server" PostBackUrl="~/Admin/EditStudent.aspx">Edit student  </asp:LinkButton>&nbsp
            <asp:LinkButton ID="LinkButton3"
                    runat="server" PostBackUrl="~/Admin/DeleteStudent.aspx">Delete student</asp:LinkButton></p>
        <p>
            <asp:LinkButton ID="LinkButton4" runat="server" 
                PostBackUrl="~/Admin/AddTeacher.aspx">Add teacher  </asp:LinkButton>&nbsp
            <asp:LinkButton
                ID="LinkButton5" runat="server" PostBackUrl="~/Admin/EditTeacher.aspx">Edit teacher  </asp:LinkButton>&nbsp
            <asp:LinkButton ID="LinkButton6"
                    runat="server" PostBackUrl="~/Admin/DeleteTeacher.aspx">Delete teacher</asp:LinkButton></p>
        <p>
            <asp:LinkButton ID="LinkButton7" runat="server" 
                PostBackUrl="~/Admin/EditClass.aspx">Edit teacher's class and subject</asp:LinkButton></p>
    </div>
    </form>
</body>
</html>
