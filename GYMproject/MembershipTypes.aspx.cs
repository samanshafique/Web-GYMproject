using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMproject
{
    public partial class MembershipTypes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand("exec Membershiplist", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt; GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getmembership();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtMname.Text == ""|| txtperiod.Text =="" || txtamount.Text =="")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter Valid data to insert');", true);

            }
            else
            {
                string Msname = txtMname.Text,
              period = txtperiod.Text;
                double amount = Convert.ToDouble(txtamount.Text);


                SqlCommand cmd = new SqlCommand("MembershipAdd", con);


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Name", txtMname.Text);
                cmd.Parameters.AddWithValue("@period", period);
                cmd.Parameters.AddWithValue("@amount", amount);


                cmd.Connection = con;


                con.Open();
                //     SqlCommand cmd = new SqlCommand("insert into MembershipTypes values ('" + txtMname.Text + "','" + txtperiod.Text + "','" + txtamount.Text + "')", con);



                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
                getmembership();

            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //int mship = int.Parse(txtMid.Text);
            //string Msname = txtMname.Text,
            // period = txtperiod.Text;
            //double amount = Convert.ToDouble(txtamount.Text);


            //SqlCommand cmd = new SqlCommand("Membershipupdate", con);


            //cmd.CommandType = CommandType.StoredProcedure;

            //cmd.Parameters.AddWithValue("@msId", mship);
            //cmd.Parameters.AddWithValue("@Name", Msname);
            //cmd.Parameters.AddWithValue("@period", period);
            //cmd.Parameters.AddWithValue("@amount", amount);

            if (txtMid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to update data');", true);

            }
            else
            {
                int mship = int.Parse(txtMid.Text);
                string Msname = txtMname.Text,
                 period = txtperiod.Text;
                double amount = Convert.ToDouble(txtamount.Text);


                SqlCommand cmd = new SqlCommand("Membershipupdate", con);


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@msId", mship);
                cmd.Parameters.AddWithValue("@Name", Msname);
                cmd.Parameters.AddWithValue("@period", period);
                cmd.Parameters.AddWithValue("@amount", amount);


                con.Open();
                // SqlCommand cmd = new SqlCommand("update MembershipTypes set Membership_type_name='" + txtamount.Text + "' where Membership_type_id='" + int.Parse(txtMid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                getmembership();
            }
            
            

           // con.Open();
           //// SqlCommand cmd = new SqlCommand("update MembershipTypes set Membership_type_name='" + txtamount.Text + "' where Membership_type_id='" + int.Parse(txtMid.Text) + "'", con);
           // cmd.ExecuteNonQuery();
           // clr();
           // con.Close();
           // ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
           // getmembership();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (txtMid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to delete data');", true);
            }
            else
            {
                int mship = int.Parse(txtMid.Text);

                SqlCommand cmd = new SqlCommand("Membershipdelete", con);


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@msId", mship);


                con.Open();
                //   SqlCommand cmd = new SqlCommand("delete MembershipTypes where Membership_type_id='" + int.Parse(txtMid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getmembership();

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (txtMid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to found data');", true);
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from MembershipTypes where Membership_type_id='" + int.Parse(txtMid.Text) + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {

                    txtMname.Text = reader.GetValue(1).ToString();
                    txtperiod.Text = reader.GetValue(2).ToString();
                    txtamount.Text = reader.GetValue(3).ToString();

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('No record found');", true);
                    clr();
                }

            }
        
            

           
        }

        private void clr()
        {
            txtMid.Text = string.Empty;
            txtamount.Text = string.Empty;
            txtMname.Text = string.Empty;
            txtperiod.Text = string.Empty;


        }

       
    }
}