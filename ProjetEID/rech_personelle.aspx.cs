using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
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
        foreach (GridViewRow item in GridView1.Rows)
        {
            if ((item.Cells[0].FindControl("cbSelect") as CheckBox).Checked)
            {
                SqlCommand cmd = new SqlCommand("delete from personelle where CIN = " + item.Cells[1].Text, con);
                cmd.ExecuteNonQuery();
            }
        }
        GridView1.DataBind();
        con.Close();
    }
}