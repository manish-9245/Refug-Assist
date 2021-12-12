using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;





public partial class recruiter_login : System.Web.UI.Page
{
   



    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int RowCount;
        string UserName = null;
        string PassWord = null;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Login where username=@username and password=@password",con);
        cmd.Parameters.AddWithValue("@username",TextBox1 .Text );

        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);

        RowCount = dt.Rows.Count;
        for(int i=0; i<RowCount; i++)
        {
            UserName = dt.Rows[i]["username"].ToString();
          PassWord  = dt.Rows[i]["password"].ToString();

          if (UserName == TextBox1.Text && PassWord == TextBox2.Text)
          {
              Session["User"] = UserName;
              if (dt.Rows[i]["role"].ToString() == "admin")

                  Response.Redirect("~/admin.aspx");
              else if (dt.Rows[i]["role"].ToString() == "recruiter")
                  Response.Redirect("~/recruiter_profile.aspx");
              else if (dt.Rows[i]["role"].ToString() == "jobseeker")

                  Response.Redirect("~/Default.aspx");


          }
          else
          {
              Label1.Visible = true;
              Label1.Text = "Invalid UserName and Password! Please try again...";
              Label1.ForeColor = System.Drawing.Color.Red;
          }

        }

      
        
    

    }
   
    
}