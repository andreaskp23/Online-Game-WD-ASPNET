using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlinegameadmin
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GlobalVariabel.adminid == "Guest")
            {

            }
            else
            {
                Response.Redirect("homeadmin.aspx");
            }
        }

        protected void idLogin_TextChanged(object sender, EventArgs e)
        {
            if (exampleInputEmail.Text.Length == 10)
            {
                if(exampleInputEmail.Text == "1234567890")
                {
                    GlobalVariabel.adminid = exampleInputEmail.Text;
                    Response.Redirect("homeadmin.aspx");
                }
                else
                {
                    exampleInputEmail.Text = "";
                    Label1.Text = "Kartu tidak sesuai, coba lagi";
                }
            }
            else
            {
                // Tambahkan tindakan yang ingin Anda lakukan jika panjang data tidak sama dengan 10
            }
        }
    }
}