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
    public partial class WeeklyEvents : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand("Select * from Weekly_Events", con);
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

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Weekly_Events values ('" + txtweeklyename.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
            getmembership();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Weekly_Events set Weekly_Event_name='" + txtweeklyename.Text + "'  where  Weekly_Event_id='" + int.Parse(TextBox6.Text) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
            getmembership();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("delete Weekly_Events where Weekly_Event_id='" + int.Parse(TextBox6.Text) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
            getmembership();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Weekly_Events where Weekly_Event_id='" + int.Parse(TextBox6.Text) + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                txtweeklyename.Text = reader.GetValue(1).ToString();

            }
        }
    }
}