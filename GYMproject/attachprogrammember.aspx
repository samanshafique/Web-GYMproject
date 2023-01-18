<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attachprogrammember.aspx.cs" Inherits="GYMproject.attachprogrammember" %>

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
            left: 6px;
            top: 68px;
            width: 20%;
             height: 85%;
         }
         .auto-style6 {
             width: 161px;
         }
         .auto-style7 {
             background-color: #FFFFFF;
         }
         .auto-style14 {
             width: 161px;
             height: 50px;
         }
         .auto-style15 {
             height: 50px;
             width: 261px;
         }
         .auto-style16 {
             width: 261px;
         }
         .auto-style17 {
             width: 161px;
             height: 51px;
         }
         .auto-style18 {
             height: 51px;
             width: 261px;
         }
        </style>
        <title>Gym Management System</title>

</head>
<body>
    <form id="form1" runat="server">
        <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;">Gym Management System</h1></center>
      
          <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
 <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a href="Calender.aspx">Calendar</a></li>
                  <li><a href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Instructors & Members</li>
        <li><a href="AddNewTrainer.aspx">Add New Trainer</a></li>
            <li><a href="AddMember.aspx">Add New Member</a></li>
           <li><a class="active" href="attachprogrammember.aspx">Allocate Trainer</a></li>
                <li><a href="Login.aspx">Logout</a></li>
</ul>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style7">
                <tr>
                    <td class="auto-style14">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Trainer Member ID"></asp:Label>
                        </strong>
                        </td>
                    <td class="auto-style15">

                        <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="120px"></asp:TextBox>

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style14" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Member ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="MemberID" DataValueField="MemberID" Height="22px" Width="108px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [MemberID] FROM [Member]"></asp:SqlDataSource>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style17" ><strong>
                        <asp:Label ID="Label4" runat="server" Text="Trainer ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style18" >
                        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="TrainerID" DataValueField="TrainerID" Height="22px" Width="108px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [TrainerID] FROM [Trainers]"></asp:SqlDataSource>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="auto-style14" ><strong>
                        <asp:Label ID="Label1" runat="server" Text="Program ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style15" >
                        <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" DataSourceID="SqlDataSource3" DataTextField="Program_id" DataValueField="Program_id" Height="22px" Width="102px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Program_id] FROM [Programs]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" >
                        <br />
                        <br />
                    </td>
                    <td class="auto-style15" >                     
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button1" runat="server" Text="Allocate" OnClick="Button1_Click" Height="30px" Width="68px"  /></a>
                        &nbsp;&nbsp;&nbsp;
            <asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" Height="29px" Width="60px" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button2" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="Button2_Click" Height="29px" Width="60px" />
                        
                    </td>
                        
                </tr>
                <tr>
                    <td class="auto-style6">

                    </td>
                    <td class="auto-style16">

                        <br />

                    </td>
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>
