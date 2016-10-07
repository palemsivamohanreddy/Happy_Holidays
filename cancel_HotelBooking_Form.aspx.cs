using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class cancel_HotelBooking_Form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Session["userid"].ToString();
        
        SqlCommand cmd = new SqlCommand("select memberid from Holidays_Member where USERID= @uid ", con);
        cmd.Parameters.AddWithValue("@uid", id);
        
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label1.Text = dr[0].ToString();
        con.Close();

        SqlCommand cmdd = new SqlCommand("select hotelbookingid from holidays_hotelbooking where memberid = @lblid and status ='P'", con);
        cmdd.Parameters.AddWithValue("@lblid", Label1.Text);
        
        con.Open();
        SqlDataReader drr = cmdd.ExecuteReader();
        while (drr.Read())
        { ddlHotelBookingId.Items.Add(drr[0].ToString()); }

        ddlHotelBookingId.DataBind();
        con.Close();
    }

    protected void btnCancelHotelBooking_Click(object sender, EventArgs e)
    {
        string id = Session["userid"].ToString();
        SqlCommand cmd = new SqlCommand("update  holidays_hotelbooking set status=@stat where HotelBookingId=@id", con);
        cmd.Parameters.AddWithValue("@id", ddlHotelBookingId.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@stat", "D");
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Cancel_HotelBooking_SuccessPage.aspx");
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlHotelBookingId.ClearSelection();

    }
}