<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewTrainer.aspx.cs" Inherits="GYMproject.AddNewTrainer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
     <style type="text/css">


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
        
            /*body {

  background-image: url('https://media.istockphoto.com/photos/sneakers-two-blue-dumbbells-a-towel-and-a-workout-mat-picture-id1062433488?k=20&m=1062433488&s=612x612&w=0&h=gJJI9-f5NBz-DrYOiC2KKSD2qvjCct6gTAmCPzxga_4=');*/
  /*http://homeklondike.site/wp-content/uploads/2017/03/3-home-gym-interior-design-light-neutral-colors-windows-fitness-exercise-equipment-gray-walls-corkwood-floor.jpg*/
   /*background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
    
}*/    body {

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
            left: 15px;
            top: 63px;
            width: 20%;
             height: 92%;
         }
         .auto-style72 {
             height: 65px;
             width: 231px;
         }
         .auto-style73 {
             height: 20px;
             width: 231px;
         }
         .auto-style74 {
             height: 21px;
             width: 231px;
         }
         .auto-style75 {
             height: 31px;
             width: 231px;
         }
         .auto-style77 {
             height: 26px;
             width: 231px;
         }
         .auto-style78 {
             height: 13px;
             width: 231px;
         }
         .auto-style81 {
             height: 23px;
             width: 231px;
         }
         .auto-style82 {
             height: 19px;
             width: 231px;
         }
         .auto-style83 {
             height: 15px;
             width: 231px;
         }
         .auto-style84 {
             width: 544px;
             height: 675px;
             background-color: #FFFFFF;
             margin-left: 0px;
         }
         .auto-style85 {
             height: 20px;
             width: 311px;
         }
         .auto-style86 {
             height: 21px;
             width: 311px;
         }
         .auto-style87 {
             height: 31px;
             width: 311px;
         }
         .auto-style88 {
             height: 13px;
             width: 311px;
         }
         .auto-style89 {
             height: 23px;
             width: 311px;
         }
         .auto-style90 {
             height: 19px;
             width: 311px;
         }
         .auto-style91 {
             height: 26px;
             width: 311px;
         }
         .auto-style92 {
             height: 65px;
             width: 311px;
         }
         .auto-style93 {
             height: 15px;
             width: 311px;
         }
         .auto-style94 {
             font-size: medium;
             background-color: #99CCFF;
         }
        </style>
    <title>Gym Management System</title>
      <%--  .auto-style1 {
            width: 100%;
            margin-right: 0px;
             height: 687px;
         }
        .auto-style2 {
            width: 200px;
             height: 36px;
         }
        .auto-style7 {
            font-weight: bold;
            background-color: #6666FF;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            color: #9933FF;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            width: 625px;
             height: 36px;
         }
        .auto-style11 {
            margin-left: 46px;
        }
        .auto-style12 {
            font-weight: bold;
            margin-left: 30px;
            background-color: #6666FF;
        }
        .auto-style13 {
            font-weight: bold;
            background-color: #6666FF;
            margin-right: 0px;
            margin-top: 0px;
        }
         .auto-style66 {
             font-size: small;
         }
         .auto-style77 {
             width: 200px;
             height: 26px;
         }
      <%--   auto-style78 {
             height: 26px;
             width: 625px;
         }
         .auto-style79 {
             width: 200px;
             height: 1px;
         }
         .auto-style80 {
             height: 1px;
             width: 625px;
         }
         .auto-style83 {
             width: 200px;
             height: 29px;
         }
         .auto-style84 {
             width: 625px;
             height: 29px;
         }
         .auto-style85 {
             width: 200px;
             height: 30px;
         }
         .auto-style86 {
             width: 625px;
             height: 30px;
         }
         .auto-style87 {
             width: 200px;
             height: 11px;
         }
         .auto-style88 {
             height: 11px;
             width: 625px;
         }
         .auto-style89 {
             width: 200px;
             height: 25px;
         }
         .auto-style90 {
             height: 25px;
             width: 625px;
         }
         .auto-style91 {
             width: 200px;
             height: 16px;
         }
         .auto-style92 {
             height: 16px;
             width: 625px;
         }
         .auto-style93 {
             width: 200px;
             height: 112px;
         }
         .auto-style94 {
             width: 625px;
             height: 112px;
         }
         .auto-style95 {
             width: 200px;
             height: 44px;
         }
         .auto-style96 {
             width: 625px;
             height: 44px;
         }
         .auto-style97 {
             width: 200px;
             height: 20px;
         }
         .auto-style98 {
             height: 20px;
             width: 625px;
         }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">

        
          <center><h1 style="background-color:#5f8eb0; margin-top: 0px;" class="auto-style8">Power House GYM</h1></center>
      
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
        <li><a class="active" href="AddNewTrainer.aspx">Add New Trainer</a></li>      
            <li><a href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Trainer</a></li>
              <li><a href="Login.aspx">Logout</a></li>
</ul>
        
            <%--<h2 class="auto-style83"><strong><span class="auto-style9">Add New Trainer</span></strong></h2>--%>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            <div class="auto-style94"> 
                <h2> 
                <strong>Add Trainer</strong></h2>
            </div>
            
            <table class="auto-style84">
            <tr>
                <td class="auto-style73"><strong>Trainer ID</strong></td>
                <td class="auto-style85">
                    <asp:TextBox ID="txtid" runat="server" Height="22px" Width="127px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style73"><strong>Name</strong></td>
                <td class="auto-style85">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" CssClass="auto-style66" ErrorMessage="Enter Name!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style74"><strong>Contact No</strong></td>
                <td class="auto-style86">
                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcontact" CssClass="auto-style66" ErrorMessage="Enter Contact No!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style75"><strong>Email Address</strong></td>
                <td class="auto-style87">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" CssClass="auto-style66" ErrorMessage="Enter Email!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style78"><strong>Gender</strong></td>
                <td class="auto-style88">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="45px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style66" ErrorMessage="Must Select Gender!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style81"><strong>Salary</strong></td>
                <td class="auto-style89">
                    <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsalary" CssClass="auto-style66" ErrorMessage="Enter Salary!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style78"><strong>Age</strong></td>
                <td class="auto-style88">
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdob" CssClass="auto-style66" ErrorMessage="Enter Age!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style82"><strong>City</strong></td>
                <td class="auto-style90">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="121px">
                        <asp:ListItem>Karachi</asp:ListItem>
                        <asp:ListItem>Lahore</asp:ListItem>
                        <asp:ListItem>Islamabad</asp:ListItem>
                        <asp:ListItem>Rawalpindi</asp:ListItem>
                        <asp:ListItem>Multan</asp:ListItem>
                        <asp:ListItem>Bahawalpur</asp:ListItem>
                        <asp:ListItem>Peshawar</asp:ListItem>
                        <asp:ListItem>Faisalabad</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style75"><strong>Profession Description</strong></td>
                <td class="auto-style87">
                    <asp:TextBox ID="txtpd" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpd" CssClass="auto-style66" ErrorMessage="Enter Address!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style77"><strong>Password</strong></td>
                <td class="auto-style91">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ViewStateMode="Disabled"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpass" CssClass="auto-style66" ErrorMessage="Enter Password!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style72"><strong>Joining Date </strong></td>
                <td class="auto-style92">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style83"><strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="Add Trainer" OnClick="Button1_Click" Height="32px" Width="96px" style="margin-left: 0px; font-weight: bold;" />
                    <br />
                    </strong></td>
                <td class="auto-style93">
                    <strong>
                    <br />
                    &nbsp;
                    <asp:Button ID="btndlt" runat="server" CssClass="auto-style7" Height="32px" OnClick="btndlt_Click" Text="Delete" Width="84px" OnClientClick="return confirm ('Are You Sure to Delete?') " style="font-weight: bold" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="updtbtn" runat="server" CssClass="auto-style12" Height="32px" OnClick="updtbtn_Click" Text="Update" Width="83px" style="font-weight: bold" />
                    &nbsp;
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style83">&nbsp;</td>
                <td class="auto-style93">
                    &nbsp;</td>
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
