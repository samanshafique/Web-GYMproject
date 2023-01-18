<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GYMproject.Admin" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <style>
       

         .grid-container {
  display: grid;
  row-gap: 50px;
  column-gap: 50px;
  grid-template-columns: auto auto auto;
  background-color: #2196F3;
  padding: 10px;
}

.grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.8);
  padding: 20px;
  font-size: 30px;
  text-align: center;
  
}
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

  background-image: url('  https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPWnsLJ4q531DTDgD_iwiYdvNitNVdoXZSA&usqp=CAU');
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
  background-color: #95abba;
  color: white;
}

li a:hover:not(.active) {
  background-color: #95abba;
  color: white;
}
        .auto-style5 {
            left: 12px;
            top: 69px;
            width: 20%;
             height: 85%;
         }
         .auto-style7 {
             font-size: medium;
         }
         .auto-style8 {
             height: 24px;
             font-size: large;
         }
         .auto-style9 {
             font-size: x-large;
         }
         .auto-style10 {
             color: #FFFFFF;
         }
         .auto-style11 {
             height: 291px;
             margin-left: 279px;
         }
         .auto-style12 {
             display: grid;
             row-gap: 50px;
             column-gap: 50px;
             grid-template-columns: auto auto auto;
             background-color: #2196F3;
             padding: 10px;
             margin-left: 32px;
             margin-top: 142px;
         }
         .auto-style14 {
             margin-left: 65px;
         }
         .auto-style15 {
             margin-left: 64px;
         }
         .auto-style16 {
             margin-left: 60px;
         }
         .auto-style17 {
             margin-left: 62px;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;" class="auto-style10">Welcome to Admin Dashboard</h1></center>
      
        <ul class="auto-style5">
    <li style="background-color:black;color:white;padding: 5px 16px;" href="admin.aspx" class="auto-style9"><strong>Dashboard</strong></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about" class="auto-style8"><strong>Setup Gym</strong></li>
  <li class="auto-style7"><a href="Business.aspx">Business Name</a></li>
 <li><a href="GymFacilities.aspx">Gym Facilities</a></li>
  <li><a href="MembershipTypes.aspx">Membership Type</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about" class="auto-style8"><strong>Programs</strong></li>
             <li><a href="Calender.aspx">Calendar</a></li>
                  <li><a href="Categories.aspx">Categories</a></li>
              <li><a href="ProgramAndPrice.aspx">Programs and Price</a></li>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about" class="auto-style8"><strong>Instructors & Members</strong></li>
        <li><a href="AddNewTrainer.aspx">Add New Trainer</a></li>      
            <li><a href="AddMember.aspx">Add New Member</a></li>
           <li><a href="attachprogrammember.aspx">Allocate Trainer</a></li>
        <li><a href="Login.aspx">Logout</a></li>
            <li></li>
           
</ul>

<div class="auto-style11">
    <div class="auto-style12">
  <div class="grid-item" style="align-content:center"  >
      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" CssClass="auto-style17" >
          <ItemTemplate>
              Members
              <br />
              <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select count([MemberID]) from Member"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select count(TrainerID) from Trainers"></asp:SqlDataSource>
  </div>
  <div class="grid-item">

      <asp:DataList ID="DataList2" runat="server" CssClass="auto-style16" DataSourceID="SqlDataSource1">
        <ItemTemplate>
         Trainers
              <br />
              <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>

  </div>
    
  <div class="grid-item">
      <asp:DataList ID="DataList3" runat="server" CssClass="auto-style15" DataSourceID="SqlDataSource4">
          <ItemTemplate>
              Memberships
              <br />
              <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select count([Membership_type_id]) from MembershipTypes"></asp:SqlDataSource>
        </div>
  <div class="grid-item">
      <asp:DataList ID="DataList4" runat="server" CssClass="auto-style14" DataSourceID="SqlDataSource5">
        <ItemTemplate>
              Equipments
              <br />
              <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select count([Facility_type_id]) from tblFacilityTypes"></asp:SqlDataSource>
        </div>
  <div class="grid-item">
      <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource6" CssClass="auto-style14" >
         <ItemTemplate>
             Workouts
              <br />
              <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select count([Program_category_id]) from ProgramCategories"></asp:SqlDataSource>
        </div>  
  <div class="grid-item">
      <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource2" CssClass="auto-style14">
        <ItemTemplate>
             Total Price
              <br />
              <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
              <br />
              <br />
          </ItemTemplate>
      </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select sum(Program_price) from Programs"></asp:SqlDataSource>
        </div>
    
</div>
</div>
            
   
    </form>
</body>
</html>


