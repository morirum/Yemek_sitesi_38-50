<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            width: 35px;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style8 {
            width: 37px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px"/>
                        </strong></td>
                    <td class="auto-style8"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                        </strong></td>
                    <td class="auto-style4">YEMEK LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="502px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5"><a href ="Yemekler.aspx?Yemekid = '<%#Eval("Yemekid") %> &islem=sil'> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style5"><a href="YemekDuzenle.aspx?Yemekid= '<%#Eval("Yemekid") %>'> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" /></a>
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

