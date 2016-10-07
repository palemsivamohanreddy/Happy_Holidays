using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_update_travel_Click(object sender, EventArgs e)
    {
     
        string cmmd = "update holidays_travel  set rentperdaypertravel=@rent1,status=@s where   travelid=@tid ";
        string dassociate = "A";
        if (chk_disacc.Checked)
        { dassociate = "D"; }
        SqlCommand cmd = new SqlCommand(cmmd, con);
        cmd.Parameters.AddWithValue("@tid", ddl_travel_id.SelectedValue);
        cmd.Parameters.AddWithValue("@rent1", txt_rent2.Text);
        cmd.Parameters.AddWithValue("@s",dassociate);
        con.Open();
        
        int no_rows = cmd.ExecuteNonQuery();

        if (no_rows != 0)
            lbltext.Text = "updated";
        con.Close();
    }

    protected void ddl_travel_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        string commd = "select traveltype,vehicletype,rentperdaypertravel,status from holidays_travel   where travelid=@tid";
        SqlCommand cmd1 = new SqlCommand(commd, con);
        cmd1.Parameters.AddWithValue("@tid",ddl_travel_id.SelectedValue);
        cmd1.Parameters.AddWithValue("@ttype", ddl_travel_id.SelectedValue);
        cmd1.Parameters.AddWithValue("@vtype", ddl_travel_id.SelectedValue);
        cmd1.Parameters.AddWithValue("@rent", ddl_travel_id.SelectedValue);
        //cmd1.Parameters.AddWithValue("@s", ddl_travel_id.SelectedValue);

        con.Open();
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            lbl_traveltype.Text = dr[0].ToString();
            lbl_vechiletype.Text = dr[1].ToString();
            txt_rent2.Text = dr[2].ToString();
            //chk_disacc.Text = dr[3].ToString();
               
        }

        con.Close();
    }

    
        
    
     
}