using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class successpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        SqlDataAdapter da = new SqlDataAdapter("select top 1 * from Holidays_HotelBooking order by hotelbookingid desc", con);
        //SqlCommand cmd = new SqlCommand("select top 1 * from Holidays_HotelBooking order by hotelbookingid desc", con);
        // con.Open();
        // SqlDataReader dr = cmd.ExecuteReader();
        DataSet ds = new DataSet();
        da.Fill(ds, "value");
        gdvdetails.DataSource = ds;
        gdvdetails.DataBind();
        Session["travel"] = ds;
       





    }

    protected void btnmakepayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("hotelpayment.aspx");
    }
}