using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace weapon
{
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database.mdf;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();

            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (IsPostBack) return;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from add_data where id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                weaponname.Text = dr["weaponname"].ToString();
                bullet.Text = dr["bullet"].ToString();
                scope.Text = dr["scope"].ToString();
                weapontype.Text = dr["weapontype"].ToString();
                manufacture.Text = dr["manufacture"].ToString();
                year.Text = dr["year"].ToString();
                
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update add_data set weaponname='"+weaponname.Text+"',bullet='"+bullet.Text+"',scope='"+scope.Text+"',weapontype='"+weapontype.Text+"',manufacture='"+manufacture.Text+"',year='"+year.Text+ "'where id=" + id+"";
            cmd.ExecuteNonQuery();

            Response.Redirect("mydata.aspx");
        }


    }
}