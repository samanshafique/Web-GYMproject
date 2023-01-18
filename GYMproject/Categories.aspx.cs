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
    public partial class Categories : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getmembership()
        {
            SqlCommand cm = new SqlCommand("exec CategoryList", con);
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
            if (txtcname.Text == "" )
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter valid data for Insertion');", true);

            }
            else
            {


                string cname = txtcname.Text;

                SqlCommand cmd = new SqlCommand("CategoryAdd", con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@CName", cname);

                cmd.Connection = con;


                con.Open();
                //SqlCommand cmd = new SqlCommand("insert into ProgramCategories values ('" + txtcname.Text + "')", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
                getmembership();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtcid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to update data');", true);

            }
            else
            {

                int cid = int.Parse(txtcid.Text);
                string cname = txtcname.Text;

                SqlCommand cmd = new SqlCommand("CategoryUpdate", con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@CId", cid);
                cmd.Parameters.AddWithValue("@CName", cname);


                cmd.Connection = con;

                con.Open();
                //    SqlCommand cmd = new SqlCommand("update ProgramCategories set Program_Category_name='" + txtcname.Text + "' where Program_Category_id='" + int.Parse(txtcid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                getmembership();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (txtcid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to delete data');", true);
            }
            else
            {


                int cid = int.Parse(txtcid.Text);


                SqlCommand cmd = new SqlCommand("CategoryDelete", con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@CId", cid);


                cmd.Connection = con;

                con.Open();
                // SqlCommand cmd = new SqlCommand("delete ProgramCategories where Program_Category_id='" + int.Parse(txtcid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getmembership();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (txtcid.Text =="")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to found Data');", true);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from ProgramCategories where Program_Category_id='" + int.Parse(txtcid.Text) + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    txtcname.Text = reader.GetValue(1).ToString();

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('No Record Found');", true);
                    clr();
                }

            }
        }
        private void clr()
        {
            txtcid.Text = string.Empty;
            txtcname.Text = string.Empty;
          



        }
    }
}