using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CasinoASP;

namespace CasinoASP
{
    public partial class Home : System.Web.UI.Page
    {
        protected void load()
        {
            try
            {
                myConnection.ConnectionString = GlobalVariabel.connString;
                myConnection.Open();
                if (GlobalVariabel.userid == "Guest")
                {
                    button3.Visible = false;
                }
                else {
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

        private void address()
        {
            string john = string.Empty;
            myConnection.ConnectionString = GlobalVariabel.connString;
            myConnection.Open();
            string query = "select email, phone, address from Contact";
            SqlCommand panggil = new SqlCommand(query, myConnection);
            SqlDataReader dataMember = panggil.ExecuteReader();
            while (dataMember.Read())
            {
                string email = dataMember["email"].ToString();
                string phone = dataMember["phone"].ToString();
                string address = dataMember["address"].ToString();
                john += $@" <li>{email}</li>
                            <li>{phone}</li>
                            <li>{address}</li>";
            }
            Literal1.Text = john;
            myConnection.Close();
        }

        SqlConnection myConnection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
            address();
                usernameLabel.Text = GlobalVariabel.username;
                idLabel.Text = GlobalVariabel.userid;
                emailLabel.Text = GlobalVariabel.Email;
                coinLabel.Text = GlobalVariabel.coin.ToString();
                cashLabel.Text = GlobalVariabel.money.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Koneksi koneksi = new Koneksi();
            koneksi.bukaKoneksi();
            koneksi.tutupKoneksi();
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Login login = new Login();

            login.masukMember();
        }

        protected void submitRegister_Click(object sender, EventArgs e)
        {
            CRUD createMember = new CRUD();

            createMember.username = nameRegister.Text;
            createMember.email = emailRegister.Text;
            createMember.memberID = idRegister.Text;

            createMember.createMember();
            Response.Redirect("Home.aspx");
        }

        protected void idLogin_TextChanged(object sender, EventArgs e)
        {
            if (idLogin.Text.Length == 10)
            {
                Login login = new Login();
                login.memberID = idLogin.Text;
                login.masukMember();
                Response.Redirect("Home.aspx");
                idLogin.Text = "";
            }
            else
            {
                // Tambahkan tindakan yang ingin Anda lakukan jika panjang data tidak sama dengan 10
            }
        }

        protected void logoutbtn(object sender, EventArgs e)
        {
            GlobalVariabel.userid = "Guest";
            GlobalVariabel.username = "Guest";
            GlobalVariabel.Email = "Guest";
            GlobalVariabel.coin = 0;
            GlobalVariabel.money = 0;
            Response.Redirect("Home.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.memberID = idLogin.Text;
            login.masukMember();
            Response.Redirect("Home.aspx");
            idLogin.Text = "";
        }
    }
}