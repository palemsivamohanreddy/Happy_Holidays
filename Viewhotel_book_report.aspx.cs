using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default7 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btn_getdetails_Click(object sender, EventArgs e)
    {

        string commd = "select hotelbookingId,memberid,hotelid,dateOfBooking from Holidays_HotelBooking where dateofbooking between @sa and @sd";

        SqlCommand cmd = new SqlCommand(commd, con);
        cmd.Parameters.AddWithValue("@sa", txt_fromdate.Text);
        cmd.Parameters.AddWithValue("@sd", txt_todate.Text);
       
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        grdv_report.DataSource = dr;
        grdv_report.DataBind();
        con.Close();
    }

    protected void grdv_report_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}