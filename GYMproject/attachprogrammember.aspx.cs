using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace GYMproject
{
    public partial class attachprogrammember : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand(" select * from  AllocationDetails", con);
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
            SqlCommand cmd = new SqlCommand("select distinct MemberID from Member", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct TrainerID from Trainers", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Program_id from Programs", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlCommand cm = new SqlCommand(" select * from  AllocationDetails", con);
            //SqlDataAdapter sd = new SqlDataAdapter(cm);
            //DataTable dt = new DataTable();
            //sd.Fill(dt);
            //if (dt.Rows.Count >= 1)
            //{
            //    Response.Write("<script>alert('Already Allocated..')</script>");
            //}
            //else
            //{
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Allocations values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Allocated');", true);
                getmembership();
            }

        //    }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to Update data');", true);
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("update Allocations set MemberID='" + DropDownList1.SelectedValue + "',TrainerID='" + DropDownList2.SelectedValue + "',Program_id='" + DropDownList3.SelectedValue + "' where Allocation_id='" + int.Parse(TextBox6.Text) + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                getmembership();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)

        {

            if (TextBox6.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to delete data');", true);
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("delete Allocations where Allocation_id='" + int.Parse(TextBox6.Text) + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getmembership();
            }
        }

    }
}


