<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
    <table class="style1">
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
            <strong>
            <asp:Label ID="Label3" runat="server" style="font-size: large; color: #000000" 
                Text="Approved Waiting User Information"></asp:Label>
            </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="FatherName" HeaderText="FatherName" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="AccountType" HeaderText="AccountType" />
                         <asp:BoundField DataField="AccountType" HeaderText="AccountType" />
                          <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" />
                            <asp:BoundField DataField="UserId" HeaderText="Userid" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Request">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkView" runat="server" OnClick="lnkView_Click">Active</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
            <strong>
            <asp:Label ID="Label4" runat="server" style="font-size: large; color: #000000" 
                Text="Approved User Information"></asp:Label>
            </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="FatherName" HeaderText="FatherName" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="AccountType" HeaderText="AccountType" />
                         <asp:BoundField DataField="AccountType" HeaderText="AccountType" />
                          <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" />
                            <asp:BoundField DataField="UserId" HeaderText="Userid" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 142px">
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

