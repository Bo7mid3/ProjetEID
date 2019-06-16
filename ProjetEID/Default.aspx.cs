using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ahmed\Desktop\ProjetEID\ProjetEID\ProjetEID\App_Data\HospitalDatabase.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click (object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from users where CIN = "+userid.Text+" and password = '"+password.Text+"'",con);
        SqlDataReader rdr = cmd.ExecuteReader();
        if (rdr.HasRows)
        {
            rdr.Read();
            switch(rdr[2])
            {
                case 1: Session["CIN"] = userid.Text; Response.Redirect("patient.aspx");break;
            }
        }
        else
            Response.Write("<script>alert('Non Authorized')</script>");
        con.Close();
    }
}