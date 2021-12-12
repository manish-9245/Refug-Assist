using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class recruiter_regi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            que();
        }
    }

    public void que()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from Question",con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "question";
        DropDownList4.DataValueField = "que_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
        con.Close();


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Company(company_name,username,que_id,ansr,contact_person,company_contact,company_addrs,company_email, company_details) values('" + TextBox15.Text + "','" + TextBox1.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox14.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox11.Text + "','" + TextBox17.Text + "')",con);

        cmd.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("insert into Login (username,password,role) values('"+TextBox1 .Text +"','"+TextBox2.Text +"','recruiter')",con);
        cmd2.ExecuteNonQuery();
        con.Close();
        Label13.Text = "Record inserted successfully";

    }
}