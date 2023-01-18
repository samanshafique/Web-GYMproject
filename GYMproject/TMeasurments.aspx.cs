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
    public partial class TMeasurments : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand("select * from memberinfo", con);
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
        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select distinct [Member id] from Member", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("insert into Measurments values ('" + DropDownList1.SelectedValue + "','" + Convert.ToDouble(TextBox1.Text) + "','" + Convert.ToDouble(TextBox2.Text) + "')", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
        //    getmembership();
        //}

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("update Measurements set MemberID='" + DropDownList1.SelectedValue + "', Height = '" + Convert.ToDouble(TextBox1.Text) + "', Weight ='" + Convert.ToDouble(TextBox2.Text) + "' where [Measurement id] ='" + int.Parse(TextBox6.Text) + "'", con);
        //    cmd.ExecuteNonQuery(); 
        //    con.Close();
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
        //    getmembership();
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("delete Measurements where [Measurement id]='" + int.Parse(TextBox6.Text) + "'", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
        //    getmembership();

        //}




    }
}