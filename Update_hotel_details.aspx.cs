using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        string commd = "select hotelname,hotelid,cityname,rating,rentperdayperhead,status from Holidays_Hotel where cityname=@city";
        SqlCommand cmd = new SqlCommand(commd, con);
        cmd.Parameters.AddWithValue("@city", ddl_city.SelectedValue);
       cmd.Parameters.AddWithValue("@hname",ddl_city.SelectedValue);
        cmd.Parameters.AddWithValue("@hid",ddl_city.SelectedValue);
        cmd.Parameters.AddWithValue("@cityname",ddl_city.SelectedValue);

        cmd.Parameters.AddWithValue("@rating", ddl_city.SelectedValue);
        cmd.Parameters.AddWithValue("@rentperhead", ddl_city.SelectedValue);
       
        //cmd.Parameters.AddWithValue("@status",ddl_city.SelectedValue);
       
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
           //ddl_city.Text = dr[0].ToString();
               ddl_hotelname.Text = dr[0].ToString();

            lblhotel_id.Text = dr[1].ToString();

            txt_cityname.Text = dr[2].ToString();

            opt_select.Text = dr[3].ToString();
            //opt_select.Text = dr[].ToString();
            txt_rent1.Text = dr[4].ToString();
            
            //chk_di.Text = dr[5].ToString();
           
            } 

            con.Close();
        }



    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        
    }

    protected void btn_update_details_Click1(object sender, EventArgs e)
    {
        string commd = "update  holidays_hotel set rentperdayperhead=@rent,rating=@rat,status=@st where  cityname=@city";
        string dassociate = "A";
        if (chk_di.Checked)
        { dassociate = "D"; }
        SqlCommand cmd1 = new SqlCommand(commd, con);
        cmd1.Parameters.AddWithValue("@city", ddl_city.SelectedValue);
        cmd1.Parameters.AddWithValue("@rent", txt_rent1.Text);
        cmd1.Parameters.AddWithValue("@rat", opt_select.Text);
     cmd1.Parameters.AddWithValue("@st", dassociate);
        con.Open();
        int no_rows = cmd1.ExecuteNonQuery();

        if (no_rows != 0)
            lbltext.Text = "updated";
        con.Close();
    }

    protected void chk_di_CheckedChanged(object sender, EventArgs e)
    {

    }
}