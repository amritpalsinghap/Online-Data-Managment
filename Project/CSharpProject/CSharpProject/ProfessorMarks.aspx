<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="professorMarks.aspx.cs" Inherits="CSharpProject.professorMarks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Marks<br />
            <br />
            Select Course:<br />
            <asp:DropDownList ID="dropCoursep" runat="server" OnSelectedIndexChanged="dropCoursep_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <p>
            &nbsp;</p>
        <p>
            Select Student:</p>
        <p>
            <asp:DropDownList ID="dropSelectStudentp" runat="server" Enabled="False" OnSelectedIndexChanged="dropSelectStudentp_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Mark:
            <asp:TextBox ID="textMark" runat="server" OnTextChanged="TextBox1_TextChanged" Width="72px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="btnUpdateMark" runat="server" OnClick="btnUpdateMark_Click" Text="Update" />
    </form>
</body>
</html>
