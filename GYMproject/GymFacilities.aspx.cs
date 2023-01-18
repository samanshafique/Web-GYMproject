using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYMproject
{
    public partial class GymFacilities : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getfacility()
        {
            SqlCommand cm = new SqlCommand("Select * from tblFacilityTypes", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt; GridView1.DataBind();
        }
            protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getfacility();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtFname.Text == "" )
            {
                Response.Write("<script>alert('Enter Valid Data to insert')</script>");

            }
            else
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tblFacilityTypes values ('" + txtFname.Text + "')", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
                getfacility();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtFId.Text == "")
            {
                Response.Write("<script>alert('Enter Facility ID which you to Update')</script>");

            }
            else
            {

                if (txtFname.Text == "")
                {
                    Response.Write("<script>alert('Enter Valid Data to Update')</script>");

                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update tblFacilityTypes set Facility_type_name='" + txtFname.Text + "' where Facility_type_id='" + int.Parse(txtFId.Text) + "'", con);
                    cmd.ExecuteNonQuery();
                    clr();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                    getfacility();
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtFId.Text == "")
            {
                Response.Write("<script>alert('Enter Facility ID which you to delete')</script>");

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete tblFacilityTypes where Facility_type_id='" + int.Parse(txtFId.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getfacility();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (txtFId.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to found data');", true);
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblFacilityTypes where Facility_type_id='" + int.Parse(txtFId.Text) + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    txtFname.Text = reader.GetValue(1).ToString();

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
            txtFId.Text = string.Empty;
            txtFname.Text = string.Empty;    


        }
    }
}