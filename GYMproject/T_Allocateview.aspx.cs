
// public partial class T_Allocateview : System.Web.UI.Page

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
    public partial class T_Allocateview : System.Web.UI.Page
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

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select distinct MemberID from Member", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}

        //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select distinct TrainerID from Trainers", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}
        //protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select distinct Program_id from Programs", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}


