using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SchoolSite.Admin
{
    public partial class EditTeacher : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            string query = "UPDATE TeachersDetail SET EmploymentNo = '" + EnumberTextBox.Text + "' WHERE FirstName = '" + NameDropDownList.Text + "'";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            try
            {
                sqlcon.Open();
                sqlcmd.ExecuteNonQuery();
                ResponseLabel.Text = "Updated successfully";
            }
            catch (Exception)
            {
                ResponseLabel.Text = "Unable to update";
            }
            sqlcon.Close();
        }
    }
}