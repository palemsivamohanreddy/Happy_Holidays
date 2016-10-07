using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try {
            SqlCommand cmd = new SqlCommand("insert_member", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@uid", txtusername.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpassword.Text);
            cmd.Parameters.AddWithValue("@mname", txtname.Text);
            cmd.Parameters.AddWithValue("@addrs", txtadress.Text);
            cmd.Parameters.AddWithValue("@dor", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@mtid", ddlMembershipType.SelectedValue.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Session["data"] = txtusername.Text;
            Session["membertype"] = ddlMembershipType.SelectedValue.ToString();
            Response.Redirect("MemberRegistration_Success.aspx");
        }
        catch(Exception)
        {

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtadress.Text = "";
        txtcpassword.Text = "";
        txtemail.Text = "";
        txtname.Text = "";
        txtpassword.Text = "";
        txtphone.Text = "";
        txtusername.Text = "";

       
    }
}