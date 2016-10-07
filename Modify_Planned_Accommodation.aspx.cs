using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Modify_Planned_Accommodation : System.Web.UI.Page
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
        Label1.Text = dr[0].ToString();
        con.Close();

        SqlCommand cmdd = new SqlCommand("select hotelbookingid from holidays_hotelbooking where memberid = @lblid", con);
        cmdd.Parameters.AddWithValue("@lblid", Label1.Text);
        con.Open();
        SqlDataReader drr = cmdd.ExecuteReader();
        while (drr.Read())
        { ddlBookingId.Items.Add(drr[0].ToString()); }

        ddlBookingId.DataBind();
        con.Close();

    }

    protected void ddlBookingId_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select Hotelid,DateofBooking,DateofStay,peopleaccompanied,noofrooms,hotestayduration from Holidays_HotelBooking where HotelBookingId=@hbid ", con);

        cmd.Parameters.AddWithValue("@hbid", ddlBookingId.SelectedValue);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
       
         grdvhoteldetails.DataSource = dr;
        grdvhoteldetails.DataBind();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnedithotelbooking_Click(object sender, EventArgs e)
    {
        SqlCommand cmm2 = new SqlCommand("update Holidays_HotelBooking set PeopleAccompanied=@pac,Noofrooms=@nor,hotestayDuration=@hsd  where HotelBookingId=@id", con);
        cmm2.Parameters.AddWithValue("@pac", txtnumberofpeople.Text);
        cmm2.Parameters.AddWithValue("@nor", txtnumberofrooms.Text);
        cmm2.Parameters.AddWithValue("@hsd", txtduration.Text);
        cmm2.Parameters.AddWithValue("@id", ddlBookingId.SelectedValue);
        con.Open();
        cmm2.ExecuteNonQuery();
        int rows = cmm2.ExecuteNonQuery();
        if (rows != 0)
        {
            Lbldisplay.Text = "Updated successfully";

        }
        else
            Lbldisplay.Text = "Not Updated modify properly";
        con.Close();

        
        
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtduration.Text = " ";
        txtnumberofrooms.Text = " ";
        txtnumberofpeople.Text = " ";

    }
}