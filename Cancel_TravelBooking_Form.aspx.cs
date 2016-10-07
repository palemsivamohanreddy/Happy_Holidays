    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data;
    using System.Data.SqlClient;
    using System.Configuration;

    public partial class Cancel_TravelBooking_Form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["userid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
            SqlCommand cmd = new SqlCommand("select memberid from Holidays_Member where USERID= @uid", con);
            cmd.Parameters.AddWithValue("@uid", id);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lbltxt.Text = dr[0].ToString();
            con.Close();

            SqlCommand cmdd = new SqlCommand("select hotelbookingid from holidays_hotelbooking where memberid = @lblid", con);
            cmdd.Parameters.AddWithValue("@lblid", lbltxt.Text);
            con.Open();
            SqlDataReader drr = cmdd.ExecuteReader();
            while (drr.Read())
            { DDlHotelBookingId.Items.Add(drr[0].ToString()); }

            DDlHotelBookingId.DataBind();
            con.Close();

            SqlCommand cmd1 = new SqlCommand("select travelbookingid from holidays_travelbooking where hotelbookingid=@hid ", con);
            cmd1.Parameters.AddWithValue("@hid", DDlHotelBookingId.SelectedValue.ToString());
            con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            { DDlTravel_BookingId.Items.Add(dr1[0].ToString()); }

            DDlTravel_BookingId.DataBind();
            con.Close();

        }

        protected void DDlHotelBookingId_SelectedIndexChanged(object sender, EventArgs e)
        {
       

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            SqlCommand cmd2 = new SqlCommand("update holidays_travelbooking set status=@sta where travelbookingid=@tbid ", con);
            cmd2.Parameters.AddWithValue("@sta", "D");
            cmd2.Parameters.AddWithValue("@tbid",DDlTravel_BookingId.SelectedValue.ToString());
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
            Session["travel"] = DDlTravel_BookingId.SelectedValue.ToString();
            Response.Redirect("Cancel_TravelBooking_SuccessPage.aspx");
        }

    protected void BtnReset_Click(object sender, EventArgs e)
    {

    }
}