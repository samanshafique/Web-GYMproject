<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMeasurments.aspx.cs" Inherits="GYMproject.TMeasurments" %>

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
            left: 10px;
            top: 68px;
            width: 19%;
          height: 75%;
      }
        </style>
    <title>Gym Management System</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;">Gym Management System</h1></center>
      
        <ul class="auto-style5">
   <li style="background-color:black;color:white;padding: 5px 16px;" href="trainer.aspx">Dashboard</li>
          
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
             <li><a href="TrainerCalender.aspx">Calendar</a></li>
        <%--   <li><a href="tcategories.aspx">Categories</a></li>--%>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Members Info</li>
           <li><a href="T_Allocateview.aspx">Allocated Members</a></li>
            <li><a class="active" href="TMeasurments.aspx">Measurements</a></li>
            <li><a href="Dietplan.aspx">Diet plan</a></li>
              <li><a href="Login.aspx">Logout</a></li>
</ul>
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="663px" Height="259px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
