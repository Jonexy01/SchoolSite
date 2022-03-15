using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SchoolSite.Admin
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                try
                {
                    string sqlcs = "Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True";
                    string query = "SELECT * FROM TheSource";
                    SqlDataAdapter sqlda = new SqlDataAdapter(query, sqlcs);
                    sqlda.Fill(ds);
                }
                catch (Exception)
                {

                    throw;
                }
                BindData(CheckBoxList1);
                BindData(CheckBoxList2);
                BindData(CheckBoxList3);
                BindData(CheckBoxList4);
                BindData(CheckBoxList5);
                BindData(CheckBoxList6);
            }
            
        }

        public void BindData(CheckBoxList cb) 
        {
            cb.DataSource = ds;
            cb.DataTextField = "Subject";
            cb.DataValueField = "Subject";
            cb.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            
            sqlcon.Open();
            
            string query = "INSERT INTO TeachersDetail (Name, EmploymentNo, EmploymentYear) VALUES ('" + NameTextBox.Text + "', '" + ENumberTextBox.Text + "', '" + EYearTextBox.Text + "')";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            
            
            string query2 = "SELECT TeacherDetailsId FROM TeachersDetail WHERE Name = '" + NameTextBox.Text + "'";
            SqlCommand sqlcmd2 = new SqlCommand(query2, sqlcon);
            
            string _id = "";
            

            try
            {
                sqlcmd.ExecuteNonQuery();
                SqlDataReader sqldr = sqlcmd2.ExecuteReader();
                while (sqldr.Read())
                {
                    _id = sqldr["TeacherDetailsId"].ToString();
                }
                sqldr.Close();
                InsertClass(CheckBox1, CheckBoxList1, sqlcon, _id);
                InsertClass(CheckBox2, CheckBoxList2, sqlcon, _id);
                InsertClass(CheckBox3, CheckBoxList3, sqlcon, _id);
                InsertClass(CheckBox4, CheckBoxList4, sqlcon, _id);
                InsertClass(CheckBox5, CheckBoxList5, sqlcon, _id);
                InsertClass(CheckBox6, CheckBoxList6, sqlcon, _id);
                
                ResponseLabel.Text = "Added successfully";
            }
            catch (Exception)
            {
                ResponseLabel.Text = "Unable to add";
            }
            
            
            sqlcon.Close();
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true){CheckBoxList1.Visible = true;}
            else{CheckBoxList1.Visible = false;}
            if (CheckBox2.Checked == true) { CheckBoxList2.Visible = true; }
            else { CheckBoxList2.Visible = false; }
            if (CheckBox3.Checked == true) { CheckBoxList3.Visible = true; }
            else { CheckBoxList3.Visible = false; }
            if (CheckBox4.Checked == true) { CheckBoxList4.Visible = true; }
            else { CheckBoxList4.Visible = false; }
            if (CheckBox5.Checked == true) { CheckBoxList5.Visible = true; }
            else { CheckBoxList5.Visible = false; }
            if (CheckBox6.Checked == true) { CheckBoxList6.Visible = true; }
            else { CheckBoxList6.Visible = false; }
        }

        public void InsertClass(CheckBox cb, CheckBoxList cbl, SqlConnection con, string id) 
        {
            if (cb.Checked)
            {
                foreach (ListItem cBox in cbl.Items)
                {
                    if (cBox.Selected)
                    {
                        string query1 = "INSERT INTO TeachersClass (Name, Class, Subject, TeacherDetailsId) VALUES ('" + NameTextBox.Text + "', '" + cb.Text + "', '" + cBox.Value + "', '"+id+"')";
                        SqlCommand sqlcmd1 = new SqlCommand(query1, con);
                        sqlcmd1.ExecuteNonQuery();
                    }
                }
            }
        }
      
    }
}