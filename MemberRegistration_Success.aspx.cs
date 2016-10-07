using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string id = Session["Data"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand("select memberid from Holidays_Member where USERID= @uid", con);
        cmd.Parameters.AddWithValue("@uid", id);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        lbldisplay.Text ="Thanks You For Regisreing With Us Your Member Id is "+ dr[0].ToString();
        con.Close();
    }
}