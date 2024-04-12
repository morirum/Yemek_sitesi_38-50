<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            text-align: right;
        }
        .auto-style6 {
            font-size: medium;
            background-color: #66FFCC;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
        }
    .auto-style8 {
        background-color: #00FFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">YEMEK AD:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">MALZEME:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">TARİF:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">KATEGORİ:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">YEMEK RESİM:</td>
            <td class="auto-style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Güncelle" Width="150px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style8" OnClick="Button2_Click" Text="Günün Yemeği Seç" />
            </td>
        </tr>
    </table>
</asp:Content>

