<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeeklyEvents.aspx.cs" Inherits="GYMproject.WeeklyEvents" %>

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

li a {
  display: block;
  color: #000;
  padding: 5px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #9ece85;
  color: white;
}

li a:hover:not(.active) {
  background-color: #9ece85;
  color: white;
}
        .auto-style1 {
            width: 133%;
            height: 125px;
            margin-left: 0px;
        }
               
        .auto-style3 {
            height: 169px;
            margin-left: 175px;
        }
        .auto-style5 {
            left: 10px;
            top: -112px;
            width: 24%;
               height: 122%;
           }
        .auto-style7 {
            margin-left: 0px;
               margin-top: 68px;
           }
    </style>
    <title>Gym Management System</title>
</head>
<body>
    <form id="form1" runat="server">
           <center><h1 style="background-color:#04AA6D; height: 44px; margin-top: 0px;">Gym Management System</h1></center>
   
          <ul class="auto-style5">
   <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#04AA6D;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
  <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MemberShipTsype.aspx">Membership Type</a></li>
           <li style="background-color:#04AA6D;padding: 5px 16px;" href="#about">Calendar and Events</li>
   <li><a href="SessionTypes.aspx">Session Types</a></li>
   <li><a class="active" href="WeeklyEvents.aspx">Weekly Events</a></li>
   <li><a href="calendar.aspx">Calendar</a></li>
           <li style="background-color:#04AA6D;padding: 5px 16px;" href="#about">Programs</li>
           <li><a href="Categories.aspx">Categories</a></li>
           <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li><a href="programofevents.aspx">Program of Events</a></li>
           <li style="background-color:#04AA6D;padding: 5px 16px;" href="#about">Trainers</li>
           <li><a href="AddNewTrainer.aspx">New Trainer</a></li>
           <li><a href="attachprograminst.aspx">Attach to Program</a></li>
           <li style="background-color:#04AA6D;padding: 5px 16px;" href="#about">Members</li>
           <li><a href="AddMember.aspx">New Member</a></li>
           <li><a href="attachprogrammember.aspx">Attach to Program</a></li>
               <li><a href="Login.aspx">Logout</a></li>
</ul>
       
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style1">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Weekly Event ID"></asp:Label>
                        </strong>
                        </td>
                    <td>

                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <a><asp:Button class="button2" style="background-color:#04AA6D;color:white;" ID="Button4" runat="server" Text="Get" OnClick="Button4_Click" /></a>

                    </td>
                    </tr>
                <tr>
                    <td ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Weekly Event Name"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="txtweeklyename" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td >&nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >                     
                        <a><asp:Button class="button2" style="background-color:#04AA6D;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" /></a>
                        &nbsp;
            <asp:Button class="button2" style="background-color:#04AA6D;color:white;" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                        &nbsp;<asp:Button class="button2" style="background-color:#04AA6D;color:white;" ID="Button2" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="Button2_Click" />
                        
                    </td>
                        
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#04AA6D" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px">
                <AlternatingRowStyle BackColor="#9ECE85" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>
