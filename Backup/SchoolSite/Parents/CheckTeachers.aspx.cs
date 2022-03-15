using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SchoolSite.Parents
{
    public partial class CheckTeachers : System.Web.UI.Page
    {
        public string _teacher = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
                string query = "SELECT Class FROM TeachersClass";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                try
                {
                    sqlcon.Open();
                    SqlDataReader sqldr = sqlcmd.ExecuteReader();
                    ClassDropDownList.DataSource = sqldr;
                    ClassDropDownList.DataTextField = "Class";
                    ClassDropDownList.DataBind();
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
            ResponseLabel.Text = "";
            SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
            string query = "SELECT Name, Subject FROM TeachersClass WHERE Class = '"+ClassDropDownList.Text+"'";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            try
            {
                sqlcon.Open();
                SqlDataReader sqldr = sqlcmd.ExecuteReader();
                while (sqldr.Read())
                {
                    //_teacher += sqldr["Name"].ToString() + " teaches " + sqldr["Subject"].ToString() + ". ";
                    ResponseLabel.Text += sqldr["Name"].ToString() + " teaches " + sqldr["Subject"].ToString() + ". ";
                    ResponseLabel.Text += "<br />";
                    //string nwln = Environment.NewLine;
                }
                
            }
            catch (Exception)
            {
                ResponseLabel.Text = "Something went wrong";
            }
            sqlcon.Close();
        }
    }
}