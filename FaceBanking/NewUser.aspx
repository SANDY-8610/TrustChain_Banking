<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<p>
    <table style="width: 100%">
        <tr>
            <td rowspan="21" style="width: 224px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/newuser.jpg" />
            </td>
            <td style="width: 73px">
                &nbsp;</td>
            <td colspan="2" style="text-align: left">
                <strong>
                <asp:Label ID="Label3" runat="server" style="font-size: large; color: #000000" 
                    Text="New User Registration"></asp:Label>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                <strong>
                <asp:Label ID="Label4" runat="server" style="font-size: medium" 
                    Text="Name"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox1" 
                    ErrorMessage="*Valid characters: Alphabets and space." style="color: #FF3300" 
                    ValidationExpression="[a-zA-Z ]*$" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                <strong>
                <asp:Label ID="Label5" runat="server" style="font-size: medium" 
                    Text="FatherName"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox2" 
                    ErrorMessage="*Valid characters: Alphabets and space." style="color: #FF3300" 
                    ValidationExpression="[a-zA-Z ]*$" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
            </td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label6" runat="server" style="font-size: medium" Text="Gender"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label7" runat="server" style="font-size: medium" Text="Age"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="rexNumber" runat="server" 
                    controltovalidate="TextBox3" errormessage="Please enter a 2 digit number!" 
                    ForeColor="Red" validationexpression="^[0-9]{2}$" />
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label8" runat="server" style="font-size: medium" Text="Mobile"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    controltovalidate="TextBox4" errormessage="Please enter a 10 digit number!" 
                    ForeColor="Red" validationexpression="^[0-9]{10}$" />
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label9" runat="server" style="font-size: medium" Text="Email"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Email Invalid" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label15" runat="server" style="font-size: medium" Text="Address"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label10" runat="server" style="font-size: medium" 
                    Text="AccountType"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>AccountHolder</asp:ListItem>
                    <asp:ListItem>JoinAccountHolder</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label11" runat="server" style="font-size: medium" 
                    Text="AccountNo"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    controltovalidate="TextBox7" errormessage="Please enter a 16 digit number!" 
                    ForeColor="Red" validationexpression="^[0-9]{16}$" />
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label12" runat="server" style="font-size: medium" 
                    Text="UserName"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="***" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label13" runat="server" style="font-size: medium" 
                    Text="Password"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="***" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExp1" runat="server" 
                    ControlToValidate="TextBox9" 
                    ErrorMessage="Password length must be between 7 to 10 characters" 
                    ForeColor="#CC0000" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{7,10}$" />
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                <strong>
                <asp:Label ID="Label14" runat="server" style="font-size: medium" 
                    Text="Retype Password"></asp:Label>
                </strong>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox9" ControlToValidate="TextBox10" 
                    ErrorMessage="Password Mismatch" style="color: #CC3300"></asp:CompareValidator>
            </td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px; height: 22px;">
                &nbsp;</td>
            <td style="width: 146px; height: 22px;">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">
                &nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

