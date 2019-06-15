using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ahmed\Desktop\ProjetEID\ProjetEID\ProjetEID\App_Data\HospitalDatabase.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into personelle values('" + cin.Text + "','" + nom.Text + "','" + prenom.Text + "','" + specialite.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}