<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            height: 29px;
            text-align: right;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            text-align: center;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            text-align: right;
        }
        .auto-style10 {
            text-align: left;
            height: 26px;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Malzemeler:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yapılış:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="180px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Önerisi:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Resim:</td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Öneren:</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Öneren Mail:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Kategori:</td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Text="Onayla" Width="150px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

