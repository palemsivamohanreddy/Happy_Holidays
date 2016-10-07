using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PlanYourAccomodation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            ddlCity.AppendDataBoundItems = true;
           
            SqlCommand cmm = new SqlCommand("select distinct  cityname from Holidays_Hotel ", con);
          
          
                con.Open();
                ddlCity.DataSource = cmm.ExecuteReader();
                ddlCity.DataBind();
           
                con.Close();
            }     

    }

    protected void ddlCityHotelBooking_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlHotel.Items.Clear();
        ddlHotel.Items.Add(new ListItem("--Select Hotel--", ""));
        ddlHotel.AppendDataBoundItems = true;
        SqlCommand cmd = new SqlCommand("select  HotelName from Holidays_Hotel where CityName=@cityname", con);
        cmd.Parameters.AddWithValue("@cityname", ddlCity.SelectedItem.Text);
       
            con.Open();
            ddlHotel.DataSource = cmd.ExecuteReader();
       
            ddlHotel.DataBind();
      
            con.Close();
      
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string id = Session["userid"].ToString();
        SqlCommand cmm1 = new SqlCommand("select MemberId from Holidays_Member where UserId=@uid", con);
        cmm1.Parameters.AddWithValue("@uid", id);
        con.Open();
        SqlDataReader dr = cmm1.ExecuteReader();
        dr.Read();
        string mid = dr[0].ToString();
        con.Close();

       
        SqlCommand cmm = new SqlCommand("insert_Hotelbooking", con);

        cmm.CommandType = CommandType.StoredProcedure;
        cmm.Parameters.AddWithValue("@mid",mid.ToString());
        cmm.Parameters.AddWithValue("@hid",ddlHotel.Text.ToString());
        cmm.Parameters.AddWithValue("@peopleacc",txtNumberOfPeople.Text);
        cmm.Parameters.AddWithValue("@noofrooms",txtNumberOfRooms.Text);
        cmm.Parameters.AddWithValue("@dob",DateTime.Now.ToString());
        cmm.Parameters.AddWithValue("@dos",txtDateOfStay.Text);
        cmm.Parameters.AddWithValue("@hsd",txtNumberOfDays.Text);
        
        
        con.Open();
            cmm.ExecuteNonQuery();

        con.Close();

        
        Response.Redirect("successpage.aspx");
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlCity.ClearSelection();
        ddlHotel.ClearSelection();
        txtDateOfStay.Text = " ";
        txtNumberOfDays.Text = " ";
        txtNumberOfPeople.Text = " ";
        txtNumberOfRooms.Text =" ";

    }
}