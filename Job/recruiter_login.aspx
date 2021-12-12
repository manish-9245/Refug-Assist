<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recruiter_login.aspx.cs" Inherits="recruiter_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jobwale</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="w3.css" rel="stylesheet" type="text/css" />

</head>
<body>
     <form id="form1" runat="server">
    <div>
    <header class="w3-container w3-light-grey">
      <h1 class="w3-jumbo">JOB PORTAL!</h1>
       <p class="w3-xlarge">Search you Fav Jobs...</p>
    </header>
       

  <div class="w3-topnav w3-red w3-large">
  <a href="homepage.aspx" >Home</a>
  <a href="#">Your Profile</a>
  <a href="#">Search Candidates </a>
  <a href="#">Post Job</a>
  <a href="#">About us</a>
</div>

<div class="w3-row-padding">
  <div class="w3-quarter">
    <p> </p>
  </div>
  <div class="w3-half">        
  <p><strong> Login Form</strong></p>

  <div class="w3-form w3-card-4">
  
  <h2>Login Form</h2>
 
  <div class="w3-group">      
    <label>UserName</label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      
  </div>
  <div class="w3-group">      
    <label>Password</label>
    
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </div>


  <div class="w3-group">      
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  </div>
      <asp:Button ID="Button1" runat="server" class="w3-btn w3-teal" Text="Login"  onclick="Button1_Click" />
  
  



  
  
  &nbsp;
      <asp:HyperLink ID="HyperLink1" runat="server">Forgot password ?</asp:HyperLink>
  
  



  
  
  </div>
  <div class="w3-group"> 
   <label>New User!</label>
      <asp:HyperLink ID="HyperLink2" runat="server" 
          NavigateUrl ="~/recruiter_regi.aspx">Registration</asp:HyperLink>

  </div>
   

  </div>
  <div class="w3-quarter">        
    <p>  </p>
  </div>
</div>


<br />

        <br />
        <br />
<br />
<br />
<br />
<br />
<br />




<footer class="w3-container w3-light-grey">
<br />
<br />

  <p style=" text-align :center">copyright@2018</p>
  <div >
  
  </div>
</footer>

    </div>
   </form>

</body>
</html>
