using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace GYMproject
{
    public partial class AddNewTrainer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            GetTrainer();
        }


        void GetTrainer()
        {
            SqlCommand cm = new SqlCommand("exec TrainersList", con);

            //SqlCommand cm1 = new SqlCommand("select * from Trainer where city = 'Karachi'; ", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

     
        protected void Button1_Click(object sender, EventArgs e)
        {
           

            string Tname = txtname.Text,
              Contact = txtcontact.Text,
              Email = txtemail.Text,
              gender = RadioButtonList1.SelectedValue,
              city = DropDownList1.SelectedValue,
              password = txtpass.Text,
             Profession  = txtpd.Text;

            double Age = double.Parse(txtdob.Text);
            double salary = double.Parse(txtsalary.Text);

            //SELECT CAST('salary'AS MONEY);
            string jdate = Calendar1.SelectedDate.ToShortDateString();

            SqlCommand cmd = new SqlCommand("TrainersAdd", con);


            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Name", Tname);
            cmd.Parameters.AddWithValue("@contact", Contact);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@Salary", salary);
            cmd.Parameters.AddWithValue("@age", Age);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@professiondescription", Profession);
            cmd.Parameters.AddWithValue("@password", password); 
            cmd.Parameters.AddWithValue("@Doj", jdate);

            cmd.Connection = con;

 
            con.Open();
        //    SqlCommand cmd = new SqlCommand("Insert into Trainers values ('" + Tname + "','" + Contact + "','" + Email + "','" + gender + "','" + salary + "','" + Age + "','" + city + "','" + Profession + "','" + password + "','" + jdate + "')", con);
            cmd.ExecuteNonQuery();
            clr();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);


            GetTrainer();

        }


        protected void updtbtn_Click(object sender, EventArgs e)
        {
            int trainerid = int.Parse(txtid.Text);
            string Tname = txtname.Text,
               Contact = txtcontact.Text,
               Email = txtemail.Text,
               gender = RadioButtonList1.SelectedValue,
               city = DropDownList1.SelectedValue,
               password = txtpass.Text,
               Profession = txtpd.Text;

            double Age = double.Parse(txtdob.Text);
            double salary = double.Parse(txtsalary.Text);

            //SELECT CAST('salary'AS MONEY);
            string jdate = Calendar1.SelectedDate.ToShortDateString();



            SqlCommand cmd = new SqlCommand("TrainersUpdate", con);


            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@TrainerId", trainerid);
            cmd.Parameters.AddWithValue("@Name", Tname);
            cmd.Parameters.AddWithValue("@contact", Contact);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@Salary", salary);
            cmd.Parameters.AddWithValue("@age", Age);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@professiondescription", Profession);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@Doj", jdate);

            cmd.Connection = con;

            con.Open();
        //    SqlCommand cmd = new SqlCommand(" Update Trainers set T_Name = '" + Tname + "',  ContactNo ='" + Contact + "', Email = '" + Email + "',  Gender = '" + gender + "', Salary = '" + salary + "', Age = '" + Age + "',City = '" + city + "',Tprofdisc = '" + Profession + "',TPassword = '" + password + "',DOJ = '" + jdate + "' where TrainerID = '" + trainerid + "'", con);
            cmd.ExecuteNonQuery();
            clr();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated!');", true);
            //    SqlCommand cmd = new SqlCommand("Update Employee set EmpName = '" + empname + "',EmpCity = '" + city + "',EmpAge = '" + age + "',EmpGender = '" + gender + "',JoiningDate = '" + jdate + "',EmpContact = '" + contact + "' where EmpID = '"+empid+"'", con);

            GetTrainer();

        }

        protected void btndlt_Click(object sender, EventArgs e)
        {
            if (txtid.Text == "")
            {
                Response.Write("<script>alert('Enter TrasinerId which you to delete')</script>");

            }
            else
            {
                int trainerid = int.Parse(txtid.Text);


      


                SqlCommand cmd = new SqlCommand("TrainersDelete", con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@TrainerId", trainerid);




                con.Open();
            //    SqlCommand cmd = new SqlCommand("Delete Trainers where TrainerID = '" + trainerid + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                GetTrainer();
            }
          
        }
        private void clr()
        {
            txtid.Text = string.Empty;
            txtname.Text = string.Empty;
            txtcontact.Text = string.Empty;
            txtemail.Text = string.Empty;
            RadioButtonList1.SelectedValue = string.Empty;
            txtpass.Text = string.Empty;
            txtpd.Text = string.Empty;
            txtdob.Text = string.Empty;
            txtsalary.Text = string.Empty;
          



        }

        protected void BtnGet_Click(object sender, EventArgs e)
        {
                    con.Open();
            SqlCommand cmd = new SqlCommand("select * from  Trainers where TrainerID = '" + int.Parse(txtid.Text) + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    txtname.Text = reader.GetValue(1).ToString();
                    txtcontact.Text = reader.GetValue(2).ToString();
                    txtemail.Text = reader.GetValue(3).ToString();
                RadioButtonList1.SelectedValue = reader.GetValue(4).ToString();
                txtsalary.Text = reader.GetValue(5).ToString();
                txtdob.Text = reader.GetValue(6).ToString();
                DropDownList1.SelectedValue = reader.GetValue(7).ToString();

                txtpd.Text = reader.GetValue(8).ToString();


                txtpass.Text = reader.GetValue(9).ToString();
                // Calendar1.SelectedDate = reader.GetValue(10).ToString();

            }
        }


        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from tblBusiness where Business_Id='" + int.Parse(TxtBid.Text) + "'", con);
        //    SqlDataReader reader = cmd.ExecuteReader();
        //    while (reader.Read())
        //    {
        //        TxtBname.Text = reader.GetValue(1).ToString();
        //        TxtBaddress.Text = reader.GetValue(2).ToString();
        //        TxtBcity.Text = reader.GetValue(3).ToString();
        //        TxtBphone.Text = reader.GetValue(4).ToString();
        //    }
        //}




    }
}