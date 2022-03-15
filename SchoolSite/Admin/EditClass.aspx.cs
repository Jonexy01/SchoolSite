using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SchoolSite.Admin
{
    public partial class EditClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
                string query = "SELECT Name FROM TeachersDetail";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                try
                {
                    sqlcon.Open();
                    SqlDataReader sqldr = sqlcmd.ExecuteReader();
                    NameDropDownList.DataSource = sqldr;
                    NameDropDownList.DataTextField = "Name";
                    NameDropDownList.DataBind();
                }
                catch (Exception)
                {

                    throw;
                }
                sqlcon.Close();
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            string teacherDetailsId = "";
            SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            string query1 = "SELECT TeacherDetailsId FROM TeachersDetail WHERE Name = '"+NameDropDownList.Text+"'";
            SqlCommand sqlcmd1 = new SqlCommand(query1, sqlcon);
            try
            {
                sqlcon.Open();
                SqlDataReader sqldr = sqlcmd1.ExecuteReader();
                while (sqldr.Read())
                {
                    teacherDetailsId = sqldr["TeacherDetailsId"].ToString();
                }
            }
            catch (Exception)
            {

                throw;
            }
            sqlcon.Close();
            
            //SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            string query = "INSERT INTO TeachersClass (Name, Class, Subject, TeacherDetailsId) VALUES ('"+NameDropDownList.Text+"', '"+ClassTextBox.Text+"', '"+SubjectTextBox.Text+"', '"+teacherDetailsId+"')";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            try
            {
                sqlcon.Open();
                sqlcmd.ExecuteNonQuery();
                ResponseLabel.Text = "Added successfully";
            }
            catch (Exception)
            {
                ResponseLabel.Text = "Unable to add";
            }
            sqlcon.Close();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            string query = "DELETE FROM TeachersClass WHERE Name = '"+NameDropDownList.Text+"'";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            try
            {
                sqlcon.Open();
                sqlcmd.ExecuteNonQuery();
                ResponseLabel.Text = "Deleted successfully";
            }
            catch (Exception)
            {
                ResponseLabel.Text = "Unable to delete";
            }
            sqlcon.Close();
        }

        
    }
}