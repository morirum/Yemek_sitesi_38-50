<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            background-color: #CCCCCC;
        }

        .auto-style9 {
            width: 35px;
            height: 34px;
        }

        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style8 {
            width: 37px;
            height: 34px;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: left;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" />
                </strong></td>
                <td class="auto-style11">ONAYSIZ TARİFLER LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:DataList ID="DataList1" runat="server" Width="502px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <a href ="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%> 
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/images.png" Width="30px" /></a>
                    </td>

                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>



    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" margin-top="20px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style11">ONAYLI TARİFLER LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    
    <asp:DataList ID="DataList2" runat="server" Width="502px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <a href ="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%> 
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/images.png" Width="30px" /></a>
                    </td>

                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

