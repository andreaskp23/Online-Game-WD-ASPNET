using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using onlinegameadmin;

namespace onlinegameadmin
{
    public partial class homeadmin : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection();

        protected void load()
        {
            try
            {
                myConnection.ConnectionString = GlobalVariabel.connString;
                myConnection.Open();

                using (SqlConnection myConnection = new SqlConnection(GlobalVariabel.connString))
                {
                    SqlDataAdapter sqlDa = new SqlDataAdapter("Select * FROM Member", myConnection);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    gvMember.DataSource = dtbl;
                    gvMember.DataBind();

                    SqlDataAdapter transaction = new SqlDataAdapter("Select * FROM Transactions", myConnection);
                    DataTable transactiondtbl = new DataTable();
                    transaction.Fill(transactiondtbl);
                    gvtransaction.DataSource = transactiondtbl;
                    gvtransaction.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                if (myConnection.State == ConnectionState.Open)
                {
                    myConnection.Close();
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            load();
            if (GlobalVariabel.adminid == "Guest")
            {
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                labeladmin.Text = GlobalVariabel.adminid;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GlobalVariabel.adminid = "Guest";
            Response.Redirect("loginpage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("addcash.aspx");
        }
    }
}