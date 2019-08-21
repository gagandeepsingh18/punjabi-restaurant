using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlClient;

public partial class Add_italian : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2010\\WebSites\\github work\\WebSite17\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    string st;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string strname=FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname); 
        
        conn.Open();
        st = "insert Add_Dish(name,specifiacation,price,image) values('" + TextBox1.Text + "','"+TextBox2.Text+"','"+TextBox3.Text+"','" +strname+ "' )";
        cmd = new SqlCommand(st, conn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Add_italian.aspx");
        }
    }
}