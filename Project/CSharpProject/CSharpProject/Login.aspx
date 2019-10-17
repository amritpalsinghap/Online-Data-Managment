<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSharpProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            User Name:<asp:TextBox ID="usernametxtbx" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:
            <asp:TextBox ID="passwordtxtbx" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="loginbtn" runat="server" OnClick="loginbtn_Click" Text="Login" />
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
