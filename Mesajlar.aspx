<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style4">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="502px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <a href ="YorumDetay.aspx?Yorumid:<%#Eval("Yorumid") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/read_icon.png" Width="30px" />
                            </a></td>
                        <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

