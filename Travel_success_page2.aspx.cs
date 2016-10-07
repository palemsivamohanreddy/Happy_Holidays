using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Travel_success_page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Session["travelid"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        
        SqlDataAdapter da = new SqlDataAdapter("select * from holidays_travel where travelid=@tid ",con);
        da.SelectCommand.Parameters.AddWithValue("@tid", id);

        DataSet ds = new DataSet();
        da.Fill(ds, "travel");
        grdvtraveldetails.DataSource = ds;
        grdvtraveldetails.DataBind();
        }
}