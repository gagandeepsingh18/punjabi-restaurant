using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2010\\WebSites\\github work\\WebSite17\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    string st;
     

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        conn.Open();
        st = "select count(*) from register where email='" +TextBox1.Text+ "' and password ='" +TextBox2+ "' ";
        cmd = new SqlCommand(st, conn);
        SqlDataAdapter sdt=new SqlDataAdapter(st,conn);
        string output =cmd.ExecuteScalar().ToString();

        if(output== "1")
        {
            Session["user"] =TextBox1.Text;
            Response.Redirect("Main.aspx");
        }
        else{
        Response.Write("login failed");
       
        }

        cmd.ExecuteNonQuery();
        Response.Redirect("Main.aspx");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}