<%@ Page Title="" Language="C#" MasterPageFile="~/AccountHolder.master" AutoEventWireup="true" CodeFile="Acctransaction.aspx.cs" Inherits="Acctransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<table style="width: 100%">
    <tr>
        <td style="width: 308px">
            &nbsp;</td>
        <td colspan="2">
            <strong>
            <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #000000" 
                Text="Amount Transaction"></asp:Label>
            </strong>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 308px">
            &nbsp;</td>
        <td style="width: 136px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 308px">
            &nbsp;</td>
        <td style="width: 136px">
            <asp:Label ID="Label10" runat="server" Text="User Id"></asp:Label>
        </td>
        <td>
            <strong>
            <asp:Label ID="Label11" runat="server" Text="User Id"></asp:Label>
            </strong>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td rowspan="11" style="width: 308px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/1234.png" />
        </td>
        <td style="width: 136px">
            <asp:Label ID="Label2" runat="server" Text="Account No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
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
        <td style="width: 136px">
            <asp:Label ID="Label4" runat="server" Text="Card Name"></asp:Label>
        </td>
        <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>Visa Card</asp:ListItem>
                    <asp:ListItem>Rupay</asp:ListItem>
                </asp:DropDownList>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Label5" runat="server" Text="Card No"></asp:Label>
        </td>
        <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Label6" runat="server" Text="TransferAccount No"></asp:Label>
        </td>
        <td>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Label9" runat="server" Text="AccHolderName"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Label7" runat="server" Text="Transfer Amount"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" 
                ontextchanged="TextBox4_TextChanged"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Label8" runat="server" Text="Remark"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Label12" runat="server" Text="Enter Your OTP"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="GetOTP" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 308px">
            &nbsp;</td>
        <td style="width: 136px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 308px">
            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        </td>
        <td style="width: 136px">
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

