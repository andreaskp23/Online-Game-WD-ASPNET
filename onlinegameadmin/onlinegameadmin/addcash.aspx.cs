using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlinegameadmin
{
    public partial class addcash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void Home(object sender, EventArgs e)
        {
            Response.Redirect("homeadmin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CRUD check = new CRUD();
            check.memberID = TextBox1.Text;
            check.memberidcheck();
            name.Text = check.membername;
            cash.Text = check.membercash.ToString();
            id.Text = check.memberID;
            result.Text = check.messagecash;
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(cashplus.Text) > 0)
            {
                if (name.Text != null)
                {
                    CRUD addcash = new CRUD();
                    addcash.memberID = id.Text;
                    addcash.Cash = Convert.ToInt32(cash.Text) + Convert.ToInt32(cashplus.Text);

                    CRUD transaction = new CRUD();
                    DateTime currentDateTime = DateTime.Now;
                    string formattedDateTime = currentDateTime.ToString("yyMMddHHmmss");
                    transaction.transactionID = formattedDateTime + id.Text;
                    transaction.memberID = id.Text;
                    transaction.jumlah = Convert.ToInt32(cashplus.Text);

                    addcash.addCash();
                    transaction.transaction();

                    name.Text = "";
                    id.Text = "";
                    cash.Text = "";
                    cashplus.Text = "";
                    result.Text = addcash.messagecash;
                }
                else
                {
                    result.Text = "Mohon Cek member ID terlebih dahulu";
                }
            }
            else
            {
                result.Text = "Mohon masukan Cash yang akan ditambah";
            }
        }
    }
}
