<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgramAndPrice.aspx.cs" Inherits="GYMproject.ProgramAndPrice" %>

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
            top: 62px;
            width: 19%;
             height: 88%;
         }
         .auto-style66 {
            font-size: small;
        }
        .auto-style67 {
            background-color: #FFFFFF;
        }
        .auto-style68 {
            height: 39px;
        }
        .auto-style69 {
            height: 58px;
        }
        .auto-style70 {
            height: 67px;
        }
        .auto-style71 {
            height: 47px;
        }
        .auto-style72 {
            height: 39px;
            width: 191px;
        }
        .auto-style73 {
            height: 58px;
            width: 191px;
        }
        .auto-style74 {
            height: 67px;
            width: 191px;
        }
        .auto-style75 {
            height: 47px;
            width: 191px;
        }
        .auto-style76 {
            width: 191px;
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
              <li><a  class="active" href="ProgramAndPrice.aspx">Programs and Price</a></li>
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
                    <td class="auto-style72">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Program ID"></asp:Label>
                        </strong>
                        </td>
                    <td class="auto-style68">

                        <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style73" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Membership Type ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style69">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Membership_type_id" DataValueField="Membership_type_id" Height="23px" Width="120px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Membership_type_id] FROM [MembershipTypes]"></asp:SqlDataSource>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style74" ><strong>
                        <asp:Label ID="Label4" runat="server" Text="Program Category ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style70" >
                        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="Program_Category_id" DataValueField="Program_Category_id" Height="21px" Width="120px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Program_Category_id] FROM [ProgramCategories]"></asp:SqlDataSource>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="auto-style75" ><strong>
                        <asp:Label ID="Label1" runat="server" Text="Program Price"></asp:Label>
                        </strong></td>
                    <td class="auto-style71" >
                        <asp:TextBox ID="txtproprice" runat="server"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtproprice" CssClass="auto-style66" ErrorMessage="Enter Price!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style76" >
                        &nbsp;</td>
                    <td >                     
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"  /></a>
                        &nbsp;
            <asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button3" runat="server" Text="Update"   OnClientClick="return confirm('Are you sure you want to Update this?');" OnClick="Button3_Click" />
                        &nbsp;<asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button2" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="Button2_Click" />
                        
                    </td>
                        
                </tr>
                <tr>
                    <td class="auto-style76">

                    </td>
                    <td>

                        <br />

                    </td>
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px" Height="197px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>
