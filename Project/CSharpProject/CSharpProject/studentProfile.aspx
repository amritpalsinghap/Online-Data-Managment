<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentProfile.aspx.cs" Inherits="CSharpProject.studentProfile" %>

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
    <form id="form2" runat="server">
        <div>
            <strong>Welcome
            <asp:Label ID="lblsfirstName" runat="server" Text="Label"></asp:Label>
            </strong>&nbsp;<strong><asp:Label ID="lblslastName" runat="server" Text="Label"></asp:Label>
            </strong>
            <br />
            <br />
            <span class="auto-style1"><strong>Contact</strong></span></div>
        <p>
            <strong>Email</strong>:
            <asp:Label ID="lblsEmail" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>Phone</strong>:
            <asp:Label ID="lblsPhone" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            <strong>Address</strong></p>
        <p>
            <strong>Street</strong>:<asp:Label ID="lblsStreet" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>City</strong>:<asp:Label ID="lblsCity" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>Province</strong>:<asp:Label ID="lblsProvince" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <strong>Postal Code</strong>:<asp:Label ID="lblsPostal" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnViewMarks" runat="server" Text="View Marks" OnClick="btnViewMarks_Click" />
&nbsp;&nbsp;
            <asp:Button ID="btnAssignTimeTable" runat="server" Text="Select Time Table" Width="223px" OnClick="btnAssignTimeTable_Click" />
        </p>
    </form>
    <p>
        &nbsp;</p>
    
</body>
</html>
