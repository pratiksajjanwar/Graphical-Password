﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using SD = System.Drawing;
using System.Drawing.Drawing2D;
using System.Data.SqlClient;

public partial class register4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);    
    String path = HttpContext.Current.Request.PhysicalApplicationPath + "images\\";
    string imagenames;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string ImageName = "5_10.jpg";
        int w = 200;// Convert.ToInt32(W.Value);
        int h = 200; //Convert.ToInt32(H.Value);
        int x = 0; //Convert.ToInt32(X.Value);
        int y = 0;// Convert.ToInt32(Y.Value);
        Label21.Text = "Width=" + w + ", Height=" + h + ", X=" + x + ", Y=" + y;
        byte[] CropImage = Crop(path + ImageName, w, h, x, y);
        using (MemoryStream ms = new MemoryStream(CropImage, 0, CropImage.Length))
        {
            ms.Write(CropImage, 0, CropImage.Length);
            using (SD.Image CroppedImage = SD.Image.FromStream(ms, true))
            {
                string SaveTo = path + "crop" + (string)Session["names"] + (string)Session["id"]+".jpg";
                CroppedImage.Save(SaveTo, CroppedImage.RawFormat);
                pnlCrop.Visible = true;
                pnlCropped.Visible = false;
                imgCropped.ImageUrl = "images/crop" + (string)Session["names"] + (string)Session["id"] + ".jpg";
                imagenames="crop" + (string)Session["names"] + (string)Session["id"] + ".jpg";
            }
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("update regis set cropimage=@cropimage,names='"+imagenames+"' where id='" + (string)Session["id"] + "'", con);
        cmd.Parameters.AddWithValue("@cropimage", CropImage);
        cmd.ExecuteNonQuery();
        Response.Redirect("Default.aspx");
        con.Close();
    }
    static byte[] Crop(string Img, int Width, int Height, int X, int Y)
    {
        try
        {
            using (SD.Image OriginalImage = SD.Image.FromFile(Img))
            {
                using (SD.Bitmap bmp = new SD.Bitmap(Width, Height))
                {
                    bmp.SetResolution(OriginalImage.HorizontalResolution, OriginalImage.VerticalResolution);
                    using (SD.Graphics Graphic = SD.Graphics.FromImage(bmp))
                    {
                        Graphic.SmoothingMode = SmoothingMode.AntiAlias;
                        Graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;
                        Graphic.PixelOffsetMode = PixelOffsetMode.HighQuality;
                        Graphic.DrawImage(OriginalImage, new SD.Rectangle(0, 0, Width, Height), X, Y, Width, Height, SD.GraphicsUnit.Pixel);
                        MemoryStream ms = new MemoryStream();
                        bmp.Save(ms, OriginalImage.RawFormat);
                        return ms.GetBuffer();
                    }
                }
            }
        }
        catch (Exception Ex)
        {
            throw (Ex);
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("delete from regis where id='" + (string)Session["id"] + "'", con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("Default.aspx");
        con.Close();
    }
}
