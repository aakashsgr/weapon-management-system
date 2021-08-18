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
    public partial class add_data : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();

            if(Session["username"]==null)
            {
                Response.Redirect("login.aspx");
            }

            if(!IsPostBack)
            {
                ListItem nlistItem = new ListItem("none","0");
                DropDownlist1.Items.Add(nlistItem);
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
           if (Session["username"]!=null)
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into add_data values('" + Session["username"].ToString() + "','" + weaponname.Text + "','" + DropDownlist1.Text + "','" + scope.Text + "','" + weapontype.Text + "','" + manufacture.Text + "','" + year.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('weapon added successfully');</script>");
            }
          
        }
       

    }
}