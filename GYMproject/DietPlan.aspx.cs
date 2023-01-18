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
    public partial class DietPlan : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand("select * from memberfoodplan", con);
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DietPlans values ('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + Convert.ToDouble(TextBox3.Text) + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
            getmembership();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TextBox6.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to Update data');", true);

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update DietPlans set MemberID='" + DropDownList1.SelectedValue + "',[Plan name]='" + TextBox1.Text + "',[Meal and time]='" + TextBox2.Text + "',[Calories]='" + Convert.ToDouble(TextBox3.Text) + "' where [Plan id]='" + int.Parse(TextBox6.Text) + "'", con);
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
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to Delete data');", true);

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete DietPlans where [Plan id]='" + int.Parse(TextBox6.Text) + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getmembership();
            }
        }
    }
}