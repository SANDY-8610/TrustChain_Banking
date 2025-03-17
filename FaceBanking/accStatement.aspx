<%@ Page Title="" Language="C#" MasterPageFile="~/AccountHolder.master" AutoEventWireup="true" CodeFile="accStatement.aspx.cs" Inherits="accStatement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="2">
                <strong>
                <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #000000" 
                    Text="Amount Transfer Statement"></asp:Label>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Start Date"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="End Date"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Search" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
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
</asp:Content>

