<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recruiter_profile.aspx.cs" Inherits="recruiter_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

<table>
<tr>
<td>
<h2>Welcome to Recruiter Page,   
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" ForeColor="Blue"></asp:Label></h2>
    </td>
    <td>
        <asp:LinkButton ID="LinkButton1" runat="server">Logout</asp:LinkButton>  </td>
    </tr>
    </table>
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
        </asp:DetailsView>
    
    </div>
</asp:Content>

