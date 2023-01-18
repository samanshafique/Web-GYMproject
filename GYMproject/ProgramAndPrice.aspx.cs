using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMproject
{
    public partial class ProgramAndPrice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand("select * from [Program MembershipCategory with Price]", con);
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
            SqlCommand cmd = new SqlCommand("select distinct Membership_type_id from MembershipTypes", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Program_Category_id from ProgramCategories", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Programs values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + Convert.ToDouble(txtproprice.Text) + "')", con);
            cmd.ExecuteNonQuery();
            clr();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
            getmembership();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtpid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to Update data');", true);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Programs set Membership_type_id ='" + DropDownList1.SelectedValue + "',Program_Category_id='" + DropDownList2.SelectedValue + "',Program_price='" + Convert.ToDouble(txtproprice.Text) + "' where Program_id='" + int.Parse(txtpid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                getmembership();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtpid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to delete data');", true);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete Programs where Program_id='" + int.Parse(txtpid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getmembership();

            }
        }

        private void clr()
        {
            txtpid.Text = string.Empty;
            txtproprice.Text = string.Empty;
      //      DropDownList1.SelectedValue = string.Empty;
           // DropDownList2.SelectedValue = string.Empty;



        }

    }
}