using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Plan_Your_Travel_MAke_Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("	select top 1 MemberName,Address,PhoneNumber, HotelBookingId, M.MemberId, PeopleAccompanied,MembershipType , DateofStay, DateofBooking from Holidays_Member M, Holidays_HotelBooking H, Holidays_Membership MS where M.MemberId = H.MemberId AND M.MembershipTypeId = MS.MembershipId ORDER BY H.HotelBookingId desc", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dtvgenral.DataSource = dr;
        dtvgenral.DataBind();
        con.Close();

        SqlCommand cmd1 = new SqlCommand("select top 1 HotelName, h.HotelId, Rating, RentPerDayPerHead, HoteStayDuration,PeopleAccompanied, (HoteStayDuration * RentPerDayPerHead *PeopleAccompanied) as hotelbillamout from Holidays_Hotel as h ,Holidays_HotelBooking as b order by HotelBookingId desc", con);                                                                                                                                  
        con.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        dtvhotel.DataSource = dr1;
        dtvhotel.DataBind();
        con.Close();

       


        SqlCommand cmd2 = new SqlCommand("select top 1 TravelBookingId,TravelDuration,TravelType,VehicleType,RentPerDayPerTravel, (TravelDuration*RentPerDayPerTravel) as  amountpertravel from Holidays_TravelBooking as tb , Holidays_Travel as t where t.TravelId = tb.TravelId order by TravelBookingId desc", con);
        con.Open();
        SqlDataReader dr2 = cmd2.ExecuteReader();
        dtvtravel.DataSource = dr2;
        dtvtravel.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("BillingConfirmation.aspx");
    }
}