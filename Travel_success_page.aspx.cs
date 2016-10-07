using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Travel_success_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        SqlDataAdapter da = new SqlDataAdapter("select top 1 * from Holidays_TravelBooking order by TravelBookingid desc ", con);
        con.Open();

        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lbl_get_tbid.Text = dt.Rows[0]["TravelBookingId"].ToString();
            hplhotelbookingid.Text = dt.Rows[0]["HotelBookingId"].ToString();
            hpltravelid.Text = dt.Rows[0]["TravelId"].ToString();
            lbl_get_td.Text = dt.Rows[0]["TravelDuration"].ToString();
            con.Close();
            
        }
    }

    protected void btn_makepayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Plan_Your_Travel_make_Payment.aspx");
    }
}