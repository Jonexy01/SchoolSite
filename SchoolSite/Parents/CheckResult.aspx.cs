using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SchoolSite.Parents
{
    public partial class CheckResult : System.Web.UI.Page
    {
        public string _result;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection sqlcon = new SqlConnection("Data Source=JONAHSEYI-PC;Initial Catalog=SchoolDetail;Integrated Security=True");
                string query = "SELECT FirstName FROM StudentDetail";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                try
                {
                    sqlcon.Open();
                    SqlDataReader sqldr = sqlcmd.ExecuteReader();
                    FNameDropDownList.DataSource = sqldr;
                    FNameDropDownList.DataTextField = "FirstName";
                    FNameDropDownList.DataBind();
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
            string query = "SELECT Result FROM StudentDetail WHERE FirstName = '"+FNameDropDownList.Text+"'";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            try
            {
                sqlcon.Open();
                SqlDataReader sqldr = sqlcmd.ExecuteReader();
                while (sqldr.Read())
                {
                    _result = Convert.ToString(sqldr["Result"]);
                        //sqldr["Result"].ToString();
                    ResponseLabel.Text = _result;
                }
            }
            catch (Exception)
            {
                ResponseLabel.Text = "Something went wrong";
            }
        }
    }
}