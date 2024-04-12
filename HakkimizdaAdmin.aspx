<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

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
    .auto-style10 {
        text-align: center;
    }
    .auto-style11 {
        font-weight: bold;
        font-style: italic;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style4">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <em><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Text="Güncelle" Width="250px" OnClick="Button3_Click" />
                    </strong></em>
                </td>
            </tr>
        </table>


    </asp:Panel>
</asp:Content>

