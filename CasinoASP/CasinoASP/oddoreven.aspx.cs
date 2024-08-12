using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CasinoASP;

namespace CasinoASP
{
    public partial class oddoreven : System.Web.UI.Page
    {
        public string coinstatus;
        SqlConnection myConnection = new SqlConnection();
        protected void load()
        {
            try
            {
                myConnection.ConnectionString = GlobalVariabel.connString;
                myConnection.Open();
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
            if (GlobalVariabel.userid != "Guest")
            {
                coinstatus = GlobalVariabel.coin.ToString();
                odd.Text = "Odd (" + coinstatus + ")";
                even.Text = "Even (" + coinstatus + ")";
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            taruhan.Text = "1";
        }

        protected void btn20_Click(object sender, EventArgs e)
        {
            taruhan.Text = "3";
        }

        protected void btn50_Click(object sender, EventArgs e)
        {
            taruhan.Text = "50";
        }

        protected void btn10_Click(object sender, EventArgs e)
        {
            taruhan.Text = "10";
        }

        protected void odd_Click(object sender, EventArgs e)
        {
            if (GlobalVariabel.coin >= Convert.ToInt32(taruhan.Text))
            {
                Random random = new Random();
                angka1.Text = random.Next(1,4).ToString();
                angka2.Text = random.Next(1, 4).ToString();
                int adding = Convert.ToInt32(angka1.Text) + Convert.ToInt32(angka2.Text);
                angka3.Text = adding.ToString();

                GlobalVariabel.coin = GlobalVariabel.coin - Convert.ToInt32(taruhan.Text);

                DateTime currentDateTime = DateTime.Now;
                string formattedDateTime = currentDateTime.ToString("yyMMddHHmmss");

                coinstatus = GlobalVariabel.coin.ToString();

                CRUD crud = new CRUD();
                crud.game_id = "103";
                crud.coinupdate = Convert.ToInt32(GlobalVariabel.coin);
                crud.coinUpdate();
                crud.betID = formattedDateTime + GlobalVariabel.userid;
                crud.jumlah_bet = Convert.ToInt32(taruhan.Text);
                crud.betHistory();

                if (Convert.ToInt32(angka3.Text) % 2 == 1)
                {
                    CRUD win = new CRUD();
                    int getcoin = Convert.ToInt32(taruhan.Text) * 2;
                    Label1.Text = "Kamu benar, +" + getcoin.ToString() + " Coins";
                    GlobalVariabel.coin = GlobalVariabel.coin + getcoin;

                    coinstatus = GlobalVariabel.coin.ToString();
                    odd.Text = "Odd (" + coinstatus + ")";
                    even.Text = "Even (" + coinstatus + ")";

                    win.jumlah_menang = getcoin;
                    win.winnerID = formattedDateTime + GlobalVariabel.userid + 7777;
                    win.coinupdate = GlobalVariabel.coin;
                    win.coinUpdate();
                    win.winner();
                }
                else
                {
                    Label1.Text = "Kamu kalah";
                    coinstatus = GlobalVariabel.coin.ToString();
                    odd.Text = "Odd (" + coinstatus + ")";
                    even.Text = "Even (" + coinstatus + ")";
                }
            }
            else
            {
                Label1.Text="Coin tidak cukup";
            }
        }

        protected void even_Click(object sender, EventArgs e)
        {
            if (GlobalVariabel.coin >= Convert.ToInt32(taruhan.Text))
            {
                Random random = new Random();
                angka1.Text = random.Next(1, 4).ToString();
                angka2.Text = random.Next(1, 4).ToString();
                int adding = Convert.ToInt32(angka1.Text) + Convert.ToInt32(angka2.Text);
                angka3.Text = adding.ToString();

                GlobalVariabel.coin = GlobalVariabel.coin - Convert.ToInt32(taruhan.Text);

                DateTime currentDateTime = DateTime.Now;
                string formattedDateTime = currentDateTime.ToString("yyMMddHHmmss");


                CRUD crud = new CRUD();
                crud.game_id = "103";
                crud.coinupdate = Convert.ToInt32(GlobalVariabel.coin);
                crud.coinUpdate();
                crud.betID = formattedDateTime + GlobalVariabel.userid;
                crud.jumlah_bet = Convert.ToInt32(taruhan.Text);
                crud.betHistory();

                if (Convert.ToInt32(angka3.Text) % 2 == 0)
                {
                    CRUD win = new CRUD();
                    int getcoin = Convert.ToInt32(taruhan.Text) * 2;
                    Label1.Text = "Kamu benar, +" + getcoin.ToString() + " Coins";
                    GlobalVariabel.coin = GlobalVariabel.coin + getcoin;

                    coinstatus = GlobalVariabel.coin.ToString();
                    odd.Text = "Odd (" + coinstatus + ")";
                    even.Text = "Even (" + coinstatus + ")";

                    win.jumlah_menang = getcoin;
                    win.winnerID = formattedDateTime + GlobalVariabel.userid + 7777;
                    win.coinupdate = GlobalVariabel.coin;
                    win.coinUpdate();
                    win.winner();
                }
                else
                {
                    Label1.Text = "Kamu kalah";
                    coinstatus = GlobalVariabel.coin.ToString();
                    odd.Text = "Odd (" + coinstatus + ")";
                    even.Text = "Even (" + coinstatus + ")";
                }
            }
            else
            {
                Label1.Text = "Coin tidak cukup";
            }
        }
    }
}