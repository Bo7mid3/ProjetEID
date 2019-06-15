using System;
using System.Collections.Generic;
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

    protected void Click_Button(object sender, EventArgs e)
    {
        con.Open();
        foreach (GridViewRow item in GridView1.Rows)
        {
            SqlCommand cmd = new SqlCommand("delete from personelle where cin ='"+item.Cells[0].Text+"'", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (((Button)sender).Text)
        {
        }
    }
}