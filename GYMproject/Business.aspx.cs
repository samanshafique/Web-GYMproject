using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace GYMproject
{
    public partial class Business : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        void getbusiness()
        {
            SqlCommand cm = new SqlCommand("Select * from tblBusiness", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt; GridView1.DataBind();
            

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getbusiness();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TxtBname.Text == "" || TxtBaddress.Text == "" || TxtBcity.Text == "" || TxtBphone.Text == "" )
            {
                Response.Write("<script>alert('Enter Valid Data to insert')</script>");

            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tblBusiness values ('" + TxtBname.Text + "','" + TxtBaddress.Text + "','" + TxtBcity.Text + "','" + TxtBphone.Text + "')", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
                getbusiness();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TxtBid.Text == "")
            {
                Response.Write("<script>alert('Enter Bussiness ID which you to Update')</script>");

            }
            else
            {

                if (TxtBname.Text == "" || TxtBaddress.Text == "" || TxtBcity.Text == "" || TxtBphone.Text == "")
                {
                    Response.Write("<script>alert('Enter Valid Data to Update')</script>");

                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update tblBusiness set Business_name='" + TxtBname.Text + "', Business_address='" + TxtBaddress.Text + "', Business_city='" + TxtBcity.Text + "',Business_phone='" + TxtBphone.Text + "' where Business_Id='" + int.Parse(TxtBid.Text) + "'", con);
                    cmd.ExecuteNonQuery();
                    clr();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                    getbusiness();
                }

          

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TxtBid.Text == "")
            {
                Response.Write("<script>alert('Enter Bussiness ID which you to delete')</script>");

            }
            else
            {
                  con.Open();
                SqlCommand cmd = new SqlCommand("delete tblBusiness where Business_Id='" + int.Parse(TxtBid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getbusiness();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TxtBid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to found data');", true);
            }
            else
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblBusiness where Business_Id='" + int.Parse(TxtBid.Text) + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    TxtBname.Text = reader.GetValue(1).ToString();
                    TxtBaddress.Text = reader.GetValue(2).ToString();
                    TxtBcity.Text = reader.GetValue(3).ToString();
                    TxtBphone.Text = reader.GetValue(4).ToString();
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
            TxtBname.Text = string.Empty;
            TxtBaddress.Text = string.Empty;
            TxtBid.Text = string.Empty;
           TxtBcity.Text = string.Empty;
            TxtBphone.Text = string.Empty;



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}