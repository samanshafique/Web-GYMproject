using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYMproject
{
    public partial class TrainerCalender : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand(" Select * from CalenderDtails", con);
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Weekly_Event_id from Weekly_Events", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Session_type_id from tblSessionTypes", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtcalendrid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to delete data');", true);

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete Calendar where Calendar_id='" + int.Parse(txtcalendrid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getmembership();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Calendar values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + txtstime.Text + "','" + txtendtime.Text + "')", con);
            cmd.ExecuteNonQuery();
            clr();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
            getmembership();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtcalendrid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to Update data');", true);

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Calendar set Weekly_Event_id='" + DropDownList1.SelectedValue + "',Session_type_id='" + DropDownList2.SelectedValue + "',Start_time='" + txtstime.Text + "', End_time='" + txtendtime.Text + "' where Calendar_id='" + int.Parse(txtcalendrid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                getmembership();
            }
        }

        private void clr()
        {
            txtcalendrid.Text = string.Empty;
            txtendtime.Text = string.Empty;
            txtstime.Text = string.Empty;
            //DropDownList1.SelectedValue  = string.Empty;
            //DropDownList2.SelectedValue = string.Empty;



        }
    }
}