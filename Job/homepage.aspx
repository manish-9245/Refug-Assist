<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="w3-row-padding">
  <div class="w3-quarter w3-right-align ">
    <p> Left</p>
     <a href ="recruiter_login.aspx" > <asp:Image ID="Image1" runat="server" ImageUrl="~/img/admin.png" /></a>
  </div>

  <div class="w3-half w3-center ">        
  <p><strong> Center</strong></p>
    <a href ="recruiter_login.aspx" >  <asp:Image ID="Image2" runat="server" ImageUrl="~/img/REC.png"  ImageAlign ="Middle"  /></a>
  </div>


  <div class="w3-quarter">        
    <p>right  </p>
     <a href ="recruiter_login.aspx" > <asp:Image ID="Image3" runat="server" ImageUrl="~/img/jobseeker.png" /> </a>

  </div>


</div>
</asp:Content>

