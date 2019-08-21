using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class italian : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2010\\WebSites\\github work\\WebSite17\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    string st;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
   
}