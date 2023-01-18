using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace GYMproject
{
    public partial class AddMember : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void GetMember()
        {
            SqlCommand cm = new SqlCommand("select * from [Member with Membershiptype]", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt; 
            GridView1.DataBind();

        }


       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetMember();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Mname = txtname.Text,
              Contact = txtcontact.Text,
              Email = txtemail.Text,
              gender = RadioButtonList1.SelectedValue,
              city = DropDownList1.SelectedValue;

            int MembershipID = int.Parse(DropDownList2.SelectedValue);
            double Age = double.Parse(txtdob.Text);


            string jdate = Calendar1.SelectedDate.ToShortDateString();
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Member values ( '" + MembershipID + "','" + Mname + "','" + gender + "','" + Age + "','" + Email + "','" + Contact + "','"  + city +  "','" + jdate + "')", con);
            cmd.ExecuteNonQuery();
            clr();
            con.Close();
            // lblmssg.Text = "All Fields are mandatory!";
            //  lblmssg.ForeColor = System.Drawing.Color.Red;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Member Successfully Inserted!');", true);


            GetMember();


        }
        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select distinct [Membership id] from tblMembershi", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}



        protected void updtbtn_Click(object sender, EventArgs e)
        {
            int memberid = int.Parse(txtid.Text);
            int MembershipID = int.Parse(DropDownList2.SelectedValue);
            string Mname = txtname.Text,
              Contact = txtcontact.Text,
              Email = txtemail.Text,
              gender = RadioButtonList1.SelectedValue,
              city = DropDownList1.SelectedValue;


            double Age = double.Parse(txtdob.Text);

            string jdate = Calendar1.SelectedDate.ToShortDateString();

            if (txtid.Text == "")
            {
                Response.Write("<script>alert('Enter MemberId which you to update')</script>");

            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand(" Update Member set Membership_type_id = '" + MembershipID + "',  M_Name = '" + Mname + "', Gender = '" + gender + "', Age = '" + Age + "', Email = '" + Email + "', ContactNo ='" + Contact + "',City = '" + city + "', DOJ = '" + jdate + "' where MemberID = '" + memberid + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Member Successfully Updated!');", true);


                GetMember();

            }
        }

        protected void btndlt_Click(object sender, EventArgs e)
        {
            if (txtid.Text == "")
            {
                Response.Write("<script>alert('Enter MemberId which you to delete')</script>");

            }
            else
            {

                int memberid = int.Parse(txtid.Text);
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete Member where MemberID = '" + memberid + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                GetMember();
            }

        }
     

        private void clr()
       {
        //  DropDownList2.Text = string.Empty;
            txtname.Text = string.Empty;
            txtcontact.Text = string.Empty;
            txtemail.Text = string.Empty;
            RadioButtonList1.SelectedValue = string.Empty;
            //RadioButtonList1.Items.Clear();
        
            txtdob.Text = string.Empty;
          
        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtdob_TextChanged(object sender, EventArgs e)
        {

        }
    }
   
    
}