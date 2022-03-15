using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//using System.Data;

namespace SchoolSite.Admin
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            string query = "INSERT INTO StudentDetail (FirstName, LastName, Result) VALUES ('"+FNameTextBox.Text+"', '"+LNameTextBox.Text+"', '"+ResultTextBox.Text+"')";
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
    }
}