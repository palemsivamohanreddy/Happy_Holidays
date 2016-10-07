using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default6 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        string commd = "Select  billingid,hotelbookingid,totalamounttobepaid,totalamountpaidbycash from Holidays_Billing";
        SqlCommand cmd = new SqlCommand(commd, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        grdv_billreport.DataSource = dr;
        grdv_billreport.DataBind();
        con.Close();
    }
}