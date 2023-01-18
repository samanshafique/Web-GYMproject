<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender.aspx.cs" Inherits="GYMproject.Calender" %>

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
              background-color: #FEFFFF;
          }
          .auto-style68 {
              width: 225px;
          }
          .auto-style69 {
              width: 140px;
          }
          .auto-style70 {
              font-weight: bold;
          }
           /*.auto-style7 {
            font-weight: bold;
            background-color: #6666FF;
        }*/
          .auto-style71 {
              width: 140px;
              height: 46px;
          }
          .auto-style72 {
              width: 225px;
              height: 46px;
          }
          .auto-style75 {
              width: 140px;
              height: 61px;
          }
          .auto-style76 {
              width: 225px;
              height: 61px;
          }
          .auto-style77 {
              width: 140px;
              height: 47px;
          }
          .auto-style78 {
              width: 225px;
              height: 47px;
          }
          .auto-style79 {
              width: 140px;
              height: 30px;
          }
          .auto-style80 {
              width: 225px;
              height: 30px;
          }
         </style>
        <title>Gym Management System</title>
</head>
<body>
    <form id="form1" runat="server">
         <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;">Power house GYM</h1></center>
      
       <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx">Dashboard</li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Setup Gym</li>
  <li><a href="Business.aspx">Business Name</a></li>
 <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a class="active" href="Calender.aspx">Calendar</a></li>
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
            
            <table class="auto-style67">
                
                <tr>
                    <td class="auto-style71">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Calendar ID"></asp:Label>
                        </strong>
                        </td>
                    <td class="auto-style72">

                        <asp:TextBox ID="txtcalendrid" runat="server" Width="128px"></asp:TextBox>

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style77" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Weekly Event ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style78">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Weekly_Event_id" DataValueField="Weekly_Event_id" Height="20px" Width="128px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Weekly_Event_id] FROM [Weekly_Events]"></asp:SqlDataSource>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style75" ><strong>
                        <asp:Label ID="Label4" runat="server" Text="Session Type ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style76" >
                        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="Session_type_id" DataValueField="Session_type_id" Width="128px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Session_type_id] FROM [tblSessionTypes]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style69">

                        <strong>
                        <asp:Label ID="Label5" runat="server" Text="Start Time"></asp:Label>
                        </strong>

                    </td>
                    <td class="auto-style68">
                        &nbsp;<asp:TextBox ID="txtstime" runat="server" Width="114px"></asp:TextBox>

                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtstime" CssClass="auto-style66" ErrorMessage="Enter Start time!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style79">

                        <strong>
                        <asp:Label ID="Label6" runat="server" Text="End Time"></asp:Label>
                        </strong>

                    </td>
                    <td class="auto-style80">
                        &nbsp;<asp:TextBox ID="txtendtime" runat="server" Width="110px"></asp:TextBox>

                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtstime" CssClass="auto-style66" ErrorMessage="Enter End Time!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style69" >
                        &nbsp;</td>
                    <td class="auto-style68" >                     
                        <a><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="auto-style70" /></a>
                        &nbsp;
            <asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button3" runat="server" Text="Update" OnClientClick= "return confirm('Are you sure you want to Update this?');" OnClick="Button3_Click" CssClass="auto-style70" />
                        &nbsp;<strong><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button2" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="Button2_Click" CssClass="auto-style70" />
                        
                        </strong>
                        
                    </td>
                        
                </tr>
                <tr>
                    <td class="auto-style69">

                    </td>
                    <td class="auto-style68">

                        <br />
                        <br />

                    </td>
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px" Height="181px" style="margin-top: 0px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>
