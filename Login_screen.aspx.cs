using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("server=23061991-Mohan ;database=Happyholidays ; Integrated Security=true");

            SqlCommand cmd = new SqlCommand("select * from  Holidays_login where userid=@uid and password=@pwd", con);
            cmd.Parameters.AddWithValue("@uid", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pwd", txtPossword.Text);
            Session["userid"] = txtUsername.Text;

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, true);
                if (dr[2].ToString() == "M")
                { Response.Redirect("MemberHomePage.aspx"); }
                else
                { Response.Redirect("Admin_HomePage.aspx"); }
            }
            else
            {
                lblerror.Text = "invalid user name/password";
            }
            con.Close();
        }

        catch (Exception )
        { }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPossword.Text = "";
    }
}