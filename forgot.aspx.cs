using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class forgot : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
     //   Response.Redirect("default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
      //  Response.Redirect("default2.aspx");
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from regis where uname='" + txtunm.Text
            + "' and cel='" + txtcno.Text + "' and dob='" + txtdb.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["ids"] = ds.Tables[0].Rows[0]["id"].ToString();
            Session["email"] = ds.Tables[0].Rows[0]["mail"].ToString();
            SendSMS.SendEmail(Session["email"].ToString(), "your password is " +
                ds.Tables[0].Rows[0]["pass"].ToString(), "password", "");
            RegisterStartupScript("msg", "<script>alert('password send to registered email address')</script>");
        }
        else
        {
            RegisterStartupScript("msg", "<script>alert('invalid account information')</script>");
        }
        con.Close();
      //  Response.Redirect("default2.aspx");
    }
}
