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

public partial class Upload : System.Web.UI.Page
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
        }
        con.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        b = System.IO.Path.GetExtension(FileUpload1.FileName);
        Session["types"] = b;
        byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
        FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
        SqlCommand cmd = new SqlCommand("insert into uploads values('"+Session["id"].ToString()+"','" + TextBox3.Text + "',@files,'" + Session["id"].ToString() + "','" + DropDownList1.SelectedItem.Text + "','" + Label2.Text + "','" + TextBox2.Text + "','"+b+"')", con);
        cmd.Parameters.AddWithValue("@files", filebytes);
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Upload Successfully...')</script>");
        con.Close();
    }
}
