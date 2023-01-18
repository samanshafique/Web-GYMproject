<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DietPlan.aspx.cs" Inherits="GYMproject.DietPlan" %>

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
        .auto-style1 {
            width: 100%;
            height: 125px;
            margin-left: 0px;
           background-color: #FFFFFF;
       }
               
        .auto-style3 {
            height: 169px;
            margin-left: 175px;
           width: 348px;
       }
        .auto-style5 {
            left: 15px;
            top: 72px;
            width: 19%;
           height: 75%;
       }
        .auto-style7 {
            margin-left: 0px;
           margin-top: 156px;
       }
       .auto-style8 {
           height: 34px;
       }
       .auto-style9 {
           height: 59px;
       }
       .auto-style10 {
           height: 35px;
       }
       .auto-style11 {
           height: 56px;
       }
    </style>
    <title>Gym Management System</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

               <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;">Diet Plan of Power House GYM</h1></center>
      
        <ul class="auto-style5">
   <li style="background-color:black;color:white;padding: 5px 16px;" href="trainer.aspx">Dashboard</li>
          
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Programs</li>
        
             <li><a href="TrainerCalender.aspx">Calendar</a></li>
       <%--    <li><a href="tcategories.aspx">Categories</a></li>--%>
           <li style="background-color:#5f8eb0;padding: 5px 16px;" href="#about">Members Info</li>
         <li><a href="T_Allocateview.aspx">Allocated Members</a></li>
            <li><a href="TMeasurments.aspx">Measurements</a></li>
            <li><a  class="active" href="Dietplan.aspx">Diet plan</a></li>
                <li><a href="Login.aspx">Logout</a></li>
            <li></li>
</ul>

          

        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Plan ID"></asp:Label>
                        </strong>
                        </td>
                    <td class="auto-style8">

                        <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="96px"></asp:TextBox>

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style9" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="Member ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MemberID" DataValueField="MemberID" Height="22px" Width="93px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [MemberID] FROM [Member]"></asp:SqlDataSource>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style10" ><strong>
                        <asp:Label ID="Label4" runat="server" Text="Plan Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style10" >
                        <asp:TextBox ID="TextBox1" runat="server" Width="96px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" CssClass="auto-style66" ErrorMessage="Enter Plan Name!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                
                
                <tr>
                    <td class="auto-style10" ><strong>
                        <asp:Label ID="Label1" runat="server" Text="Meal with Time"></asp:Label>
                        </strong></td>
                    <td class="auto-style10" >
                        <asp:TextBox ID="TextBox2" runat="server" Width="158px" Height="25px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox2" CssClass="auto-style66" ErrorMessage="Enter Meal with time!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style11" ><strong>
                        <asp:Label ID="Label7" runat="server" Text="Calories"></asp:Label>
                        </strong></td>
                    <td class="auto-style11" >
                        <asp:TextBox ID="TextBox3" runat="server" Width="96px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" CssClass="auto-style66" ErrorMessage="Enter Calories!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >                     
                        <a><asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"  /></a>
                        &nbsp;
            <asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button3" runat="server" Text="Update"  OnClientClick="return confirm('Are you sure you want to Update this?');"  OnClick="Button3_Click" />
                        &nbsp;<asp:Button class="button2" style="background-color:#5f8eb0;color:white;" ID="Button2" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" OnClick="Button2_Click" />
                        
                    </td>
                        
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>

                        <br />

                    </td>
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px" Height="235px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
