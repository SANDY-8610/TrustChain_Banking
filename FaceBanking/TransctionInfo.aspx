<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TransctionInfo.aspx.cs" Inherits="TransctionInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <table class="style1">
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td colspan="2">
                <strong>
                <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #000000" 
                    Text="Transaction Info"></asp:Label>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                <asp:Label ID="Label2" runat="server" Text="Select Card Type"></asp:Label>
&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Debit Card</asp:ListItem>
                    <asp:ListItem>Prepaid Card</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                <asp:Label ID="Label3" runat="server" Text="Start Date"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                <asp:Label ID="Label4" runat="server" Text="End Date"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 139px">
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
</asp:Content>

