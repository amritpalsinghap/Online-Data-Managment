<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="professorProfile.aspx.cs" Inherits="CSharpProject.professorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Welcome
            <asp:Label ID="lblfirstName" runat="server" Text="Label"></asp:Label>
            </strong>&nbsp;<strong><asp:Label ID="lbllastName" runat="server" Text="Label"></asp:Label>
            </strong>
            <br />
            <br />
            <span class="auto-style1"><strong>Contact</strong></span></div>
        <p>
            <strong>Email</strong>:
            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>Phone</strong>:
            <asp:Label ID="lblPhone" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            <strong>Address</strong></p>
        <p>
            <strong>Street</strong>:<asp:Label ID="lblStreet" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>City</strong>:<asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>Province</strong>:<asp:Label ID="lblProvince" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>Postal Code</strong>:<asp:Label ID="lblPostal" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Assign marks" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="View TimeTable" Width="257px" />
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
