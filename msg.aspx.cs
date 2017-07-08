using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class msg : System.Web.UI.Page
{
    //ids idgen = new ids();
    string a,b;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {        
        con.Open();
        if (!IsPostBack)
        {
            Label7.Text = (string)Session["nam"];
            Label2.Text = System.DateTime.Now.ToShortDateString();
            Label9.Text = (string)Session["nam"];
            //HiddenField1.Value = Convert.ToString(idgen.idgeneration1());
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from regis where nam!='" + Label9.Text + "'", con);
            DataSet ds = new DataSet();
            sda1.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["nam"].ToString());
            }
            fill();
        }
        con.Close();
    }
    void fill()
    {
        Label2.Text = (string)Session["nam"];
      if (con.State==ConnectionState.Closed )  con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from Msg where froms='" + Label2.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            RegisterStartupScript("msg", "<script>alert('No Data Here...')</script>");
        }
        con.Close();
 
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
     
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("insert into Msg values('" + Label7.Text  + "','" + DropDownList1.SelectedItem.Text + "','" + Label2.Text + "','" + TextBox2.Text + "')", con);
           cmd.ExecuteNonQuery();
           fill();
        RegisterStartupScript("msg", "<script>alert('Send Successfully...')</script>");
        con.Close();
    }
}
