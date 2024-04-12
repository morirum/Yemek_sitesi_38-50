<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            background-color: #CCCCCC;
        }
    .auto-style4 {
        text-align: left;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        font-size: large;
    }
        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style8 {
            width: 37px;
        }
        .auto-style9 {
            width: 35px;
        }
        .auto-style10 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style4">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="502px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href ="Kategoriler.aspx?Kategoriid = <%#Eval("Kategoriid") %>" &islem=sil" <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style5">
                            <a href="KategoriDuzenle.aspx?Kategoriid= <%#Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:Panel ID="Panel5" runat="server" CssClass="auto-style3">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style9"><strong>
                                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                                    </strong></td>
                                <td class="auto-style8"><strong>
                                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                                    </strong></td>
                                <td class="auto-style4">KATEGORİ EKLEME</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style10" Text="EKLE" Width="100px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

