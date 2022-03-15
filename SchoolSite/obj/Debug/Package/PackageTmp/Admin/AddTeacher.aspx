<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="SchoolSite.Admin.AddTeacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 align="center">Add teacher</h1>
        <span>Name </span><asp:TextBox ID="NameTextBox" runat="server" 
            style="margin-left: 88px" Width="146px"></asp:TextBox><br />
        <span>Employment number </span><asp:TextBox ID="ENumberTextBox" runat="server"></asp:TextBox><br />
        <span>Employment year </span>
        <asp:TextBox ID="EYearTextBox" runat="server" style="margin-left: 21px" 
            Width="135px"></asp:TextBox><br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Pry 1" AutoPostBack="True" oncheckedchanged="CheckBox_CheckedChanged" /><br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Visible="False" RepeatColumns="3" >
        </asp:CheckBoxList>
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Pry 2" AutoPostBack="True" oncheckedchanged="CheckBox_CheckedChanged" /><br />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" Visible="False" RepeatColumns="3">
        </asp:CheckBoxList>
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Pry 3" AutoPostBack="True" oncheckedchanged="CheckBox_CheckedChanged" /><br />
        <asp:CheckBoxList ID="CheckBoxList3" runat="server" Visible="False" RepeatColumns="3">
        </asp:CheckBoxList>
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Pry 4" AutoPostBack="True" oncheckedchanged="CheckBox_CheckedChanged" /><br />
        <asp:CheckBoxList ID="CheckBoxList4" runat="server" Visible="False" RepeatColumns="3">
        </asp:CheckBoxList>
        <asp:CheckBox ID="CheckBox5" runat="server" Text="Pry 5" AutoPostBack="True" oncheckedchanged="CheckBox_CheckedChanged" /><br />
        <asp:CheckBoxList ID="CheckBoxList5" runat="server" Visible="False" RepeatColumns="3">
        </asp:CheckBoxList>
        <asp:CheckBox ID="CheckBox6" runat="server" Text="Pry 6" AutoPostBack="True" oncheckedchanged="CheckBox_CheckedChanged" /><br />
        <asp:CheckBoxList ID="CheckBoxList6" runat="server" Visible="False" RepeatColumns="3">
        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Add teacher" 
            onclick="Button1_Click" /><asp:Label ID="ResponseLabel" runat="server"
            Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
