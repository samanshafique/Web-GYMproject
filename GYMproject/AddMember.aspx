<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="GYMproject.AddMember" %>

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
        /*.auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            color: #9933FF;
            background-color: #FFFFFF;
        }
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
            margin-left: 48px;
        }
        .auto-style2 {
            width: 101px;
        }
        .auto-style10 {
            width: 867px;
        }
        .auto-style3 {
            width: 101px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 867px;
        }
        .auto-style13 {
            font-weight: bold;
            background-color: #6666FF;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style12 {
            font-weight: bold;
            margin-left: 30px;
            background-color: #6666FF;
        }
        .auto-style7 {
            font-weight: bold;
            background-color: #6666FF;
        }
        .auto-style30 {
            margin-left: 9px;
            margin-top: 23px;
        }
        .auto-style31 {
            margin-top: 16px;
        }
        .auto-style34 {
            margin-top: 21px;
        }
        .auto-style38 {
            width: 101px;
            height: 8px;
        }
        .auto-style39 {
            height: 8px;
            width: 867px;
        }
        .auto-style42 {
            width: 101px;
            height: 15px;
        }
        .auto-style43 {
            height: 15px;
            width: 867px;
        }
        .auto-style44 {
            width: 101px;
            height: 34px;
        }
        .auto-style45 {
            width: 867px;
            height: 34px;
        }
        .auto-style62 {
            width: 101px;
            height: 20px;
        }
        .auto-style63 {
            height: 20px;
            width: 867px;
        }
        .auto-style64 {
            width: 101px;
            height: 25px;
        }
        .auto-style65 {
            width: 867px;
            height: 25px;
        }
        .auto-style66 {
            font-size: small;
        }
        .auto-style50 {
            width: 101px;
            height: 50px;
        }
        .auto-style51 {
            width: 867px;
            height: 50px;
        }
        .auto-style22 {
            margin-left: 5px;
            margin-top: 17px;
        }
        .auto-style40 {
            width: 101px;
            height: 9px;
        }
        .auto-style41 {
            height: 9px;
            width: 867px;
        }
        .auto-style35 {
            margin-top: 19px;
        }*/
        .auto-style85 {
            width: 303px;
        }
        .auto-style86 {
            height: 596px;
            width: 530px;
            background-color: #FFFFFF;
        }
        .auto-style87 {
            width: 136px;
        }
        .auto-style90 {
            width: 136px;
            height: 26px;
        }
        .auto-style91 {
            width: 303px;
            height: 26px;
        }
        .auto-style98 {
            width: 136px;
            height: 20px;
        }
        .auto-style99 {
            width: 303px;
            height: 20px;
        }
        .auto-style100 {
            width: 136px;
            height: 15px;
        }
        .auto-style101 {
            width: 303px;
            height: 15px;
        }
        .auto-style102 {
            width: 136px;
            height: 18px;
        }
        .auto-style103 {
            width: 303px;
            height: 18px;
        }
        .auto-style108 {
            width: 136px;
            height: 34px;
        }
        .auto-style109 {
            width: 303px;
            height: 34px;
        }
        .auto-style110 {
            width: 136px;
            height: 33px;
        }
        .auto-style111 {
            width: 303px;
            height: 33px;
        }
        .auto-style112 {
            width: 136px;
            height: 23px;
        }
        .auto-style113 {
            width: 303px;
            height: 23px;
        }
        .auto-style114 {
            background-color: #99CCFF;
        }
        .auto-style115 {
            left: 10px;
            top: 59px;
            right: 609px;
            width: 22%;
            height: 88%;
        }
        </style>


</head>
<body>
    <form id="form1" runat="server">


            <center><h1 style="background-color:#5f8eb0; margin-top: 0px;" class="auto-style8">Power House GYM</h1></center>
      
        <ul class="auto-style115">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
 <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a href="Calender.aspx">Calender</a></li>
                  <li><a href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Instructors & Members</li>
         <li><a href="AddNewTrainer.aspx">Add New Trainer</a></li>      
            <li><a class="active"href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Trainer</a></li>
              <li><a href="Login.aspx">Logout</a></li>
</ul>
        
            <%--<h2 class="auto-style83"><strong><span class="auto-style9">Add New Trainer</span></strong></h2>--%>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
           <div>
             <div class="auto-style8"> 
            <h2 class="auto-style114"><strong><span class="auto-style9">Add New Member</span></strong></h2>
        </div>



        <table class="auto-style86">
            <tr>
                <td class="auto-style112"><strong>&nbsp;&nbsp;&nbsp; Member<em> </em>ID</strong></td>
                <td class="auto-style113">
                    <br />
                    <asp:TextBox ID="txtid" runat="server" Height="22px" Width="134px" CssClass="auto-style31"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style90"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Membership &nbsp;ID</strong></td>
                <td class="auto-style91">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Membership_type_id" DataValueField="Membership_type_id" Height="22px" Width="123px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Membership_type_id] FROM [MembershipTypes]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style108"><strong>&nbsp;&nbsp;&nbsp; Name</strong></td>
                <td class="auto-style109">
                    <asp:TextBox ID="txtname" runat="server" CssClass="auto-style34" Height="22px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" CssClass="auto-style66" ErrorMessage="Enter Name!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style98"><strong>&nbsp;&nbsp;&nbsp; Gender</strong></td>
                <td class="auto-style99">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style66" ErrorMessage="Must Select Gender!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style110"><strong>&nbsp;&nbsp; Age</strong></td>
                <td class="auto-style111">
                    <asp:TextBox ID="txtdob" runat="server" CssClass="auto-style22" OnTextChanged="txtdob_TextChanged" Height="22px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdob" CssClass="auto-style66" ErrorMessage="Enter Age!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style98"><strong>&nbsp;&nbsp;&nbsp; Email Address</strong></td>
                <td class="auto-style99">
                    <asp:TextBox ID="txtemail" runat="server" OnTextChanged="txtemail_TextChanged" Height="22px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" CssClass="auto-style66" ErrorMessage="Enter Email!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style100"><strong>&nbsp;&nbsp;&nbsp; Contact No</strong></td>
                <td class="auto-style101">
                    <asp:TextBox ID="txtcontact" runat="server" CssClass="auto-style35" Height="22px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcontact" CssClass="auto-style66" ErrorMessage="Enter Contact No!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style102"><strong>&nbsp;&nbsp;&nbsp; City</strong></td>
                <td class="auto-style103">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="121px" CssClass="auto-style30">
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
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style102"><strong>&nbsp;&nbsp;&nbsp; Joining Date </strong></td>
                <td class="auto-style103">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" Width="118px">
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
                <td class="auto-style87">&nbsp;</td>
                <td class="auto-style85"><strong>&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" style="background-color:#5f8eb0;color:white;" Text="Add Member" OnClick="Button1_Click" Height="32px" Width="105px" />
                    &nbsp;
                    <asp:Button ID="updtbtn" runat="server" CssClass="auto-style12" style="background-color:#5f8eb0;color:white;"  Height="32px" OnClick="updtbtn_Click" Text="Update" Width="86px" />
                    &nbsp; &nbsp;<asp:Button ID="btndlt" runat="server" CssClass="auto-style7" style="background-color:#5f8eb0;color:white;"  Height="32px" OnClick="btndlt_Click" Text="Delete" Width="75px" OnClientClick="return confirm ('Are You Sure to Delete?')" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style87">&nbsp;</td>
                <td class="auto-style85">&nbsp;</td>
            </tr>
        </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>

















       <%--   <center><h1 style="background-color:#5f8eb0; margin-top: 0px;" class="auto-style8">Power House GYM</h1></center>
          <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
 <li><a  href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a href="Calender.aspx">Calendar</a></li>
                  <li><a href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Instructors & Members</li>
        <li><a href="AddNewTrainer.aspx">Add New Instructor</a></li>      
            <li><a class="active"href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Instructor</a></li>
               <li><a href="Login.aspx">Logout</a></li>
</ul>











        <div>
             <div class="auto-style8"> 
            <h2><strong><span class="auto-style9">Add New Member</span></strong></h2>
        </div>



        <table class="auto-style1">
            <tr>
                <td class="auto-style64"><em><strong>Member</strong></em><strong><em> ID</em></strong></td>
                <td class="auto-style65">
                    <asp:TextBox ID="txtid" runat="server" Height="22px" Width="115px" CssClass="auto-style31"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style64"><em><strong>Membership </strong></em><strong><em>&nbsp;ID</em></strong></td>
                <td class="auto-style65">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Membership_type_id" DataValueField="Membership_type_id" Height="25px" Width="123px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Membership_type_id] FROM [MembershipTypes]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style38"><strong><em>Name</em></strong></td>
                <td class="auto-style39">
                    <asp:TextBox ID="txtname" runat="server" CssClass="auto-style34"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" CssClass="auto-style66" ErrorMessage="Enter Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style44"><strong><em>Gender</em></strong></td>
                <td class="auto-style45">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style66" ErrorMessage="Must Select Gender!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style50"><strong><em>Age</em></strong></td>
                <td class="auto-style51">
                    <asp:TextBox ID="txtdob" runat="server" CssClass="auto-style22"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdob" CssClass="auto-style66" ErrorMessage="Enter Age!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style42"><strong><em>Email Address</em></strong></td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" CssClass="auto-style66" ErrorMessage="Enter Email!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style40"><strong><em>Contact No</em></strong></td>
                <td class="auto-style41">
                    <asp:TextBox ID="txtcontact" runat="server" CssClass="auto-style35"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcontact" CssClass="auto-style66" ErrorMessage="Enter Contact No!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong><em>City</em></strong></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="121px" CssClass="auto-style30">
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
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong><em>Joining Date </em></strong></td>
                <td class="auto-style4">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                <td class="auto-style62"></td>
                <td class="auto-style63"><strong>
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" style="background-color:#5f8eb0;color:white;" Text="Add Member" OnClick="Button1_Click" Height="32px" Width="85px" />
                    <asp:Button ID="updtbtn" runat="server" CssClass="auto-style12" style="background-color:#5f8eb0;color:white;"  Height="32px" OnClick="updtbtn_Click" Text="Update" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btndlt" runat="server" CssClass="auto-style7" style="background-color:#5f8eb0;color:white;"  Height="32px" OnClick="btndlt_Click" Text="Delete" Width="85px" OnClientClick="return confirm ('Are You Sure to Delete?')" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    </strong></td>
            </tr>
        </table>
        <br />
       
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
        <br />
        </div>--%>
    </form>
</body>
</html>
