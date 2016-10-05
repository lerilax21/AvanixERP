<%@ Page Title="" Language="C#" MasterPageFile="~/MasterVisitor.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
