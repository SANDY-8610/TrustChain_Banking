<%@ Page Title="" Language="C#" MasterPageFile="~/AccountHolder.master" AutoEventWireup="true" CodeFile="CardReg.aspx.cs" Inherits="CardReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <table style="width: 100%">
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td colspan="2">
                <strong>
                <asp:Label ID="Label1" runat="server" style="font-size: medium" 
                    Text="Card Registration"></asp:Label>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label7" runat="server" Text="User ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label2" runat="server" Text="Account No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label3" runat="server" Text="Card Type"></asp:Label>
            </td>
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
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label4" runat="server" Text="Card Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>Visa Card</asp:ListItem>
                    <asp:ListItem>Rupay</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label5" runat="server" Text="Card No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label9" runat="server" Text="Valid Year"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label6" runat="server" Text="Pin No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                <asp:Label ID="Label8" runat="server" Text="Retype-Pin No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                &nbsp;</td>
            <td style="width: 140px">
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
    <p>
    </p>
</asp:Content>

