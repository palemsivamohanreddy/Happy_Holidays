using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Session["addhotel"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand("select Hotelid from Holidays_Hotel where hotelname= @name", con);
        cmd.Parameters.AddWithValue("@name", id);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        lblmsg.Text = "The Hotel Has Accociated sucessfully with Hotel Id is " + dr[0].ToString();
        con.Close();
    }
}