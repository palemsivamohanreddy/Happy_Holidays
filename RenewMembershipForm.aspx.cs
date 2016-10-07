using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void BtnRenew_Click(object sender, EventArgs e)
    {
        string uid = Session["userid"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString);
        SqlCommand cmd = new SqlCommand("update Holidays_Member set MembershipTypeId=@mid where UserId=@uid", con);
        cmd.Parameters.AddWithValue("@UID", uid);
        cmd.Parameters.AddWithValue("@mid", DDLMtype.SelectedValue.ToString());
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("RenewMembershipSuccess Page.aspx");
        con.Close();
       
    }
}