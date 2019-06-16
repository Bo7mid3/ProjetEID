using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT  * from patient where CIN_med = "+ Session["CIN"];
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void Select_Patient(object sender, EventArgs e)
    {

    }
}