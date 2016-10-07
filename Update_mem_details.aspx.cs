using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default5 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnupdate_mem_details_Click(object sender, EventArgs e)
    {
       
        string commd = "update holidays_membership set hoteldiscountpercentage=@hdp,membershipfees=@mf,membershipduration=@md,maxpeopleallowed=@maxallow where membershiptype= @mtype";
        SqlCommand cmd = new SqlCommand(commd, con);
        cmd.Parameters.AddWithValue("@mtype", ddl_membership_id.SelectedValue);
        cmd.Parameters.AddWithValue("@hdp", txt_discount.Text);
        cmd.Parameters.AddWithValue("@mf", txtprocess_fees.Text);
        cmd.Parameters.AddWithValue("@md", txtmembership_duration.Text);
        cmd.Parameters.AddWithValue("@maxallow", txtmaxi_pleallowed.Text);
       

        con.Open();
        int no_rows = cmd.ExecuteNonQuery();
      
        if (no_rows != 0)
            lbltext.Text = "updated";
        con.Close();
    }

    protected void ddl_membership_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        string commd1 = "select membershiptype,hoteldiscountpercentage,membershipfees,membershipduration,maxpeopleallowed from holidays_membership where membershiptype=@mtype";
        SqlCommand cmd1 = new SqlCommand(commd1, con);
        cmd1.Parameters.AddWithValue("@mtype",ddl_membership_id.SelectedValue); 
        cmd1.Parameters.AddWithValue("@hdp", ddl_membership_id.SelectedValue);
        cmd1.Parameters.AddWithValue("@mf", ddl_membership_id.SelectedValue);
        cmd1.Parameters.AddWithValue("@md", ddl_membership_id.SelectedValue);
        cmd1.Parameters.AddWithValue("@maxallow", ddl_membership_id.SelectedValue);

        con.Open();
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            lbl_mem_type.Text =  dr[0].ToString();
            txt_discount.Text = dr[1].ToString();
            txtprocess_fees.Text = dr[2].ToString();
            txtmembership_duration.Text = dr[3].ToString();
            txtmaxi_pleallowed.Text = dr[4].ToString();

        }

        else {
            lbltext.Text = "no data";

        }

        con.Close();
    }




    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
