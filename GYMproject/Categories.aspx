<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="GYMproject.Categories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <style>
        .button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 110%;
  overflow: auto;
            top: 63px;
            left: 10px;
        }

         body {

  background-image: url('https://media.istockphoto.com/photos/gym-background-blurred-picture-id928250848?b=1&k=20&m=928250848&s=170667a&w=0&h=7NMKTfywdR1vTaShH4yliPcol-UIgiknbns28MvdC-c=');
   background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
    
}
li a {
  display: block;
  color: #000;
  padding: 5px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #b8caf5;
  color: white;
}

li a:hover:not(.active) {
  background-color: #b8caf5;
  color: white;
}
        .auto-style5 {
            left: 12px;
            top: 50px;
            width: 22%;
             height: 84%;
         }
           .auto-style6 {
               height: 39px;
           }
           .auto-style9 {
               width: 125px;
           }
           .auto-style10 {
               background-color: #FFFFFF;
           }
           .auto-style12 {
               width: 125px;
               height: 42px;
           }
           .auto-style13 {
               height: 42px;
               width: 230px;
           }
           .auto-style14 {
               width: 230px;
           }
        </style>
    <title>Gym Management System</title>
</head>
<body>
    <form id="form1" runat="server">
        
       <center><h1 style="background-color:#5f8eb0; margin-top: 0px;" class="auto-style6">Power House GYM</h1></center>
        <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
 <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
          <li><a href="Calender.aspx">Calender</a></li>
                  <li><a class="active" href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Instructors & Members</li>
        <li><a href="AddNewTrainer.aspx">Add New Trainer</a></li>      
            <li><a href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Trainer</a></li>
               <li><a href="Login.aspx">Logout</a></li>
</ul>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style10">
                <tr>
                    <td class="auto-style12">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Category ID"></asp:Label>
                        </strong>
                        </td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtcid" runat="server" Width="106px"></asp:TextBox>
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button4" runat="server" Text="Get" OnClick="Button4_Click" Width="60px" /></a>

                    &nbsp;</td>
                    </tr>
                <tr>
                    <td class="auto-style12" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtcname" runat="server" Width="113px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style14" >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" >
                        &nbsp;</td>
                    <td class="auto-style14" >                     
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" /></a>
                        &nbsp;&nbsp;&nbsp;
            <asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                        &nbsp;
                        &nbsp;<asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button2" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="Button2_Click" />
                        
                    </td>
                        
                </tr>
                <tr>
                    <td class="auto-style9">

                    </td>
                    <td class="auto-style14">

                        <br />
                        <br />

                    </td>
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" ForeColor="White" Width="715px" Height="180px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>
