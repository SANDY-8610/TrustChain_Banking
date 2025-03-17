<%@ Page Title="" Language="C#" MasterPageFile="~/AccountHolder.master" AutoEventWireup="true" CodeFile="AutharLink.aspx.cs" Inherits="AutharLink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<table style="width: 100%">
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td colspan="2">
            <strong>
            <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #000000" 
                Text="Aadhaar Linking Form"></asp:Label>
            </strong>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td rowspan="9" style="width: 122px">
            <asp:Image ID="Image1" runat="server" Height="248px" ImageUrl="~/image/12.jpg" 
                Width="302px" />
        </td>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Account No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Aadhaar No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Captcha"></asp:Label>
        </td>
        <td>
            <em>
            <asp:TextBox ID="TextBox4" runat="server" 
                style="font-family: 'Brush Script MT'; text-decoration: underline" Width="87px">123</asp:TextBox>
            </em>&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">New Captcha</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 85px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

