using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace GYMproject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            if (Verftext.Text != "")
            {

                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select ID from UserLogin where Username ='" + usenname.Text + "' And Password = '" + password.Text + "' ", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    //     cmd.ExecuteNonQuery();

                    if (dt.Rows.Count == 1)
                    {

                        //    If(Dt.Rows[0][0].ToString() == "Master")
                        //   {


                        if (dt.Rows[0][0].ToString() == "1")
                        {
                            Response.Write("<script>alert('Successfully Login')</script>");
                            Response.Redirect("~/Admin.aspx");

                        }
                        else if (dt.Rows[0][0].ToString() == "2")
                        {
                            Response.Write("<script>alert('Successfully Login')</script>");
                            Response.Redirect("~/Trainer.aspx");
                        }
                        else if (dt.Rows[0][0].ToString() == "3")
                        {
                            Response.Write("<script>alert('Successfully Login')</script>");
                            Response.Redirect("~/Member.aspx");
                        }

                    }

                    //else if (Verftext.Text != "")
                    //{
                    //    Response.Write("<script>alert('Must verify Capttcha for login ')</script>");
                    //}
                    else
                    {
                        Response.Write("<script>alert('Error in Login')</script>");
                        clr();
                    }
                }

                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                clr();
                con.Close();
            }
        }
        private void clr()
        {
            usenname.Text = string.Empty;
            password.Text = string.Empty;
            Verftext.Text = string.Empty;
        }

        protected void refreshbtn_Click(object sender, EventArgs e)
        {

        }



        protected void Button1_Click2(object sender, EventArgs e)
        {
            captcha1.ValidateCaptcha(Verftext.Text.Trim());
            if (captcha1.UserValidated)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Font.Bold = true;
                Label1.Text = "Your Captcha Text Has Been Verified Successfully. You Have Entered Valid Captcha";
                Panel2.Visible = false;
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Font.Bold = true;
                Label1.Text = "Your Captcha Text Verification is UnSuccessfully. You Have Entered Invalid Captcha";
            }
        }
    }
}




























//namespace GYMproject
//{
//    public partial class Login : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {

//            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

//            try
//            {
//                con.Open();
//                SqlCommand cmd = new SqlCommand("select ID from UserLogin where Username ='" + usenname.Text + "' And Password = '" + password.Text + "' ", con);
//                SqlDataAdapter sda = new SqlDataAdapter(cmd);
//                DataTable dt = new DataTable();
//                sda.Fill(dt);

//                //     cmd.ExecuteNonQuery();


//                if (dt.Rows.Count == 1)
//                {

//                    //    If(Dt.Rows[0][0].ToString() == "Master")
//                    //   {


//                    if (dt.Rows[0][0].ToString() == "1")
//                    {
//                        Response.Write("<script>alert('Successfully Login')</script>");
//                        Response.Redirect("~/Admin.aspx");

//                    }
//                    else if (dt.Rows[0][0].ToString() == "2")
//                    {
//                        Response.Write("<script>alert('Successfully Login')</script>");
//                        Response.Redirect("~/Trainer.aspx");
//                    }
//                    else if (dt.Rows[0][0].ToString() == "3")
//                    {
//                        Response.Write("<script>alert('Successfully Login')</script>");
//                        Response.Redirect("~/Member.aspx");
//                    }

//                }
//                else
//                {
//                    Response.Write("<script>alert('Error in Login')</script>");
//                    clr();
//                }

//            }
//            catch (Exception ex)
//            {
//                Response.Write(ex.Message);
//            }

//            clr();
//            con.Close();
//        }
//        private void clr()
//        {
//            usenname.Text = string.Empty;
//            password.Text = string.Empty;
//        }

//    }

//}