<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GYMproject.Login" %>



<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    
    <title>Gym</title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-weight: normal;
            color: #000066;
        }
        .auto-style3 {
            align-items:center;
            width: 73%;
            height: 300px;
            width : 400px;

            /*margin-left: 100px;*/
            /*margin-left: 100px;*/
            background-color:darkgray;
             

        }
        .auto-style4 {
            height: 23px;
            width: 205px;
        }
        .auto-style5 {
            height: 23px;
            font-size: large;
            width: 185px;
            font-style: normal;
            text-align: center;
        }
        .auto-style6 {
            font-size: large;
            width: 185px;
            height: 24px;
            font-style: normal;
            text-align: center;
        }
                
            body {

  background-image: url('https://us.123rf.com/450wm/phonlamaiphoto/phonlamaiphoto1610/phonlamaiphoto161000383/63713518-3d-rendering-metal-dumbbell-with-gym-background.jpg?ver=6');
   background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
}
        .auto-style8 {
            height: 24px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            height: 18px;
        }
        .auto-style12 {
            height: 23px;
            width: 185px;
            font-style: normal;
            text-align: center;
            /*align-content:center;*/
        }
        .auto-style13 {
            font-size: small;
        }
        .auto-style14 {
            width: 185px;
            height: 24px;
            font-size: large;
        }
        .auto-style17 {
            font-size: medium;
            font-weight: bold;
            margin-top: 12px;
        }
        .auto-style18 {
            width: 185px;
            height: 26px;
            font-size: large;
        }
        .auto-style19 {
            height: 26px;
            width: 205px;
        }
        .auto-style20 {
            height: 24px;
            width: 205px;
        }
    </style>
</head>
<body >
    <%--style=" justify-content:center; width: 950px; height: 800px">--%>

    <form id="form2" runat="server">
        <div>
 <center><h1 class="auto-style2"><strong>Welcome to Power House GYM</strong></h1></center>

            <asp:Panel ID="Panel1" runat="server">

                 <p class="auto-style10">
            &nbsp;</p>
       <center>
           <table class="auto-style3">
            <tr>
                <td class="auto-style12">
                    <h2><strong><em>Login Form</em></strong></h2>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style5"><strong>User Name</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="usenname" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usenname" CssClass="auto-style13" ErrorMessage=" Enter UserName!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Password</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" CssClass="auto-style13" ErrorMessage="Enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
          
               
               <asp:Panel ID="Panel2" runat="server">

                      <tr>
                <td class="auto-style18"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Captcha Image</strong></td>
                <td class="auto-style19">
               
             
                    
                   <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="lightBlue" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46px" Width="200px" />
                    
                    
                    <asp:Button ID="refreshbtn" runat="server" BackColor="#CCCCFF" BorderColor="#CCCCFF" CssClass="auto-style15" OnClick="refreshbtn_Click" Text="Refresh" style="margin-top: 15px" CausesValidation="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Verification Text</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="Verftext" runat="server"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:Button ID="verifybtn" runat="server" BackColor="#CCCCFF" BorderColor="#CCCCFF" CssClass="auto-style15" OnClick="Button1_Click2" Text="Verify" CausesValidation="false" Width="62px" style="margin-top: 15px" />
                    <br />
                    </strong>
                </td>
            </tr>

               </asp:Panel>

               
     

               <tr>
                   <td class="auto-style11" colspan="2">
                  <center>
                      <asp:Button ID="loginbtn" runat="server" BackColor="Black" CssClass="auto-style17" ForeColor="White" Height="34px" OnClick="Button1_Click1" Text="Login" Width="225px" />
                  </center>
                      
                       <br />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style11" colspan="2">
                       <asp:Label ID="Label1" runat="server"></asp:Label>
                   </td>
               </tr>
        </table>

       </center> 
            </asp:Panel>
       

        </div>
    </form>
</body>
</html>































<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    
    <title>Gym</title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-weight: normal;
            color: #000066;
        }
        .auto-style3 {
            align-items:center;
            width: 73%;
            height: 300px;
            width : 400px;

            /*margin-left: 100px;*/
            /*margin-left: 100px;*/
            background-color:darkgray;
             

        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            font-size: large;
            width: 185px;
            font-style: normal;
            text-align: center;
        }
        .auto-style6 {
            font-size: large;
            width: 185px;
            height: 24px;
            font-style: normal;
            text-align: center;
        }
        .auto-style7 {
            width: 185px;
            height: 18px;
        }
        
            body {

  background-image: url('https://us.123rf.com/450wm/phonlamaiphoto/phonlamaiphoto1610/phonlamaiphoto161000383/63713518-3d-rendering-metal-dumbbell-with-gym-background.jpg?ver=6');
   background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
}
        .auto-style8 {
            height: 24px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            height: 18px;
        }
        .auto-style12 {
            height: 23px;
            width: 185px;
            font-style: normal;
            text-align: center;
            /*align-content:center;*/
        }
        .auto-style13 {
            font-size: small;
        }
    </style>
</head>
<body >
  

    <form id="form1" runat="server">
        <div>
 <center><h1 class="auto-style2"><strong>Welcome to Power House GYM</strong></h1></center>

 
        <p class="auto-style10">
            &nbsp;</p>
       <center>
           <table class="auto-style3">
            <tr>
                <td class="auto-style12">
                    <h2><strong><em>Login Form</em></strong></h2>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style5"><strong>User Name</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="usenname" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usenname" CssClass="auto-style13" ErrorMessage=" Enter UserName!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Password</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" CssClass="auto-style13" ErrorMessage="Enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11">
                    <h5>
                    <asp:Button ID="loginButton" runat="server" OnClick="Button1_Click" Text="Login" Width="100px" BackColor="Black" BorderColor="Black" CssClass="auto-style10" Font-Bold="True" ForeColor="White" Font-Size="Medium" Height="30px" />
                    </h5>
                </td>
            </tr>
        </table>


       </center> 

        </div>
    </form>
</body>
</html>--%>
