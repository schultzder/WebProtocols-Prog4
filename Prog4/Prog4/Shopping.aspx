<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="Prog4.Shopping" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <form id="form2" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Sub Total"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Tax"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Grand Total"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
    </table>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Submit" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" style="text-align: center" Text="Reset" OnClick="Button2_Click" />
        <br />
        <textarea id="TextArea1" name="S1" runat="server" style="height: 98px; width: 1136px" readonly="readonly"></textarea></form>
</asp:Content>
