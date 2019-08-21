using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2010\\WebSites\\github work\\WebSite17\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        string st;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        string st;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2010\\WebSites\\github work\\WebSite17\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        conn.Open();
        st = "insert review(review) values('" + TextBox1.Text + "')";
        cmd = new SqlCommand(st, conn);

        cmd.ExecuteNonQuery();
        Response.Redirect("Main.aspx");
    }
}