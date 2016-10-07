using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hotelpayment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("	select top 1 MemberName,Address,PhoneNumber, HotelBookingId, M.MemberId, PeopleAccompanied,MembershipType , DateofStay, DateofBooking from Holidays_Member M, Holidays_HotelBooking H, Holidays_Membership MS where M.MemberId = H.MemberId AND M.MembershipTypeId = MS.MembershipId ORDER BY H.HotelBookingId desc", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        DetailsView1.DataSource = dr;
        DetailsView1.DataBind();
        con.Close();
    }
}