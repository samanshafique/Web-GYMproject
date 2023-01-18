<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GymFacilities.aspx.cs" Inherits="GYMproject.GymFacilities" %>

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

             /* body {

  background-image: url(' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPWnsLJ4q531DTDgD_iwiYdvNitNVdoXZSA&usqp=CAU');
   background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
    https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPWnsLJ4q531DTDgD_iwiYdvNitNVdoXZSA&usqp=CAU
}*/
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
}     .auto-style5 {
            left: 12px;
            top: 65px;
            width: 22%;
             height: 86%;
         }
           .auto-style6 {
            background-color: #FFFFFF;
        }
        .auto-style8 {
            height: 36px;
        }
        .auto-style9 {
            height: 30px;
        }
           .auto-style10 {
            margin-top: 11px;
        }
           </style>
    <title>Gym Management System</title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
              <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;">Equipments of Power House Gym</h1></center>
      
       <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
 <li><a  class="active"href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a href="Calender.aspx">Calender</a></li>
                  <li><a href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Instructors & Members</li>
        <li><a href="AddNewTrainer.aspx">Add New Trainerr</a></li>      
            <li><a href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Trainer</a></li>
             <li><a href="Login.aspx">Logout</a></li>
</ul>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style6">
                <tr>
                    <td class="auto-style8">
                        <strong>Facility ID</strong></td>
                    <td class="auto-style8">

                        <asp:TextBox ID="txtFId" runat="server" Height="24px"></asp:TextBox>
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button4" runat="server" Text="Get" OnClick="Button4_Click"/></a>

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style9" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Facility Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtFname" runat="server" Height="24px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td >&nbsp;</td>
                    <td >
                        <br />
                    </td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >                     
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" /></a>
                        &nbsp;
            <asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"/>
                        &nbsp;<asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" OnClientClick="return confirm('Are you sure you want to delete this?');" />
                        
                    </td>
                        
                </tr>
                <tr>
                    <td>

                        <br />

                    </td>
                    <td>

                    </td>
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style10" ForeColor="White" Width="715px" Height="210px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
