using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PlanYourTravel : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        grdvhotelbooking.DataSource = Session["travel"];
        grdvhotelbooking.DataBind();
    }

    protected void btnSaveConfirm_Click(object sender, EventArgs e)
    {
        SqlCommand cmm = new SqlCommand("select top 1 * from Holidays_HotelBooking order by HotelBookingid desc", con);
        con.Open();
        SqlDataReader dr = cmm.ExecuteReader();
        dr.Read();
        string id = dr[0].ToString();
        con.Close();

        SqlCommand cmd = new SqlCommand("planyourtravel", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@hbid",id.ToString());
        cmd.Parameters.AddWithValue("@travelid",txtTravelId.Text);
        cmd.Parameters.AddWithValue("@travelduration", txtTravelDurationInDays.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["travelid"] = txtTravelId.Text.ToString();
        Response.Redirect("Travel_success_page.aspx");
        

    }

    protected void txtTravelId_TextChanged(object sender, EventArgs e)
    {

    }
}