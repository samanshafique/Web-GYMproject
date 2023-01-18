<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Business.aspx.cs" Inherits="GYMproject.Business" %>

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
            left: 9px;
            top: 60px;
            width: 20%;
             height: 86%;
         }
         .auto-style67 {
             font-weight: bold;
         }
         .auto-style68 {
             width: 244px;
         }
         .auto-style69 {
             width: 174px;
         }
         .auto-style70 {
             width: 174px;
             height: 41px;
         }
         .auto-style71 {
             width: 244px;
             height: 41px;
         }
         .auto-style72 {
             background-color: #FFFFFF;
             height: 262px;
         }
        </style>
    <title>Gym Management System</title>

</head>
<body>
    <form id="form1" runat="server">
        
         <center><h1 style="background-color:#5f8eb0; margin-top: 0px;" class="auto-style8">Bussiness Page of&nbsp; Power House GYM</h1></center>
      
        <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a class="active"href="Business.aspx">Business Name</a></li>
 <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a href="Calender.aspx">Calender</a></li>
                  <li><a href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Instructors & Members</li>
        <li><a href="AddNewTrainer.aspx">Add New Trainer</a></li>      
            <li><a href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Trainer</a></li>
              <li><a href="Login.aspx">Logout</a></li>
</ul>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style72">
                <tr>
                    <td class="auto-style70">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Business ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style71">

                        <asp:TextBox ID="TxtBid" runat="server" Height="22px" Width="128px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button4" runat="server" Text="Get" OnClick="Button4_Click" Width="52px" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style69" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Business Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style68">
                        <asp:TextBox ID="TxtBname" runat="server" Height="22px" Width="133px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style70" ><strong>
                        <asp:Label ID="Label3" runat="server" Text="Business Address"></asp:Label>
                        </strong></td>
                    <td class="auto-style71">
                        <asp:TextBox ID="TxtBaddress" runat="server" CssClass="auto-style4" Width="133px" Height="22px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style69" ><strong>
                        <asp:Label ID="Label4" runat="server" Text="Business City"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" >
                        
                        <asp:TextBox ID="TxtBcity" runat="server" Height="22px" Width="133px"></asp:TextBox>
                        
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69" ><strong>
                        <asp:Label ID="Label5" runat="server" Text="Business Phone"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" >
                        <asp:TextBox ID="TxtBphone" runat="server" Height="22px" Width="128px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69" >
                        &nbsp;</td>
                    <td class="auto-style68" >                     
                        <br />
                        <strong><a><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="auto-style67" Height="26px" Width="59px" /></a>
                        </strong>&nbsp;
            <strong>
            <asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style67" Height="26px" Width="59px" />
                        </strong>&nbsp;<strong><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" OnClientClick="return confirm('Are you sure you want to delete this?');" CssClass="auto-style67" Height="26px" Width="61px" />
                        
                        <br />
                        <br />
                        
                        <br />
                        
                        </strong>
                        
                    </td>
                        
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px" style="margin-top: 21px" Height="204px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
        
    </form>
</body>
</html>
