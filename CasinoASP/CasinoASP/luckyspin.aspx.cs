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
    public partial class luckyspin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (GlobalVariabel.userid != "Guest")
            {
                Label2.Text = GlobalVariabel.coin.ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void angka3_TextChanged(object sender, EventArgs e)
        {
        }



        protected async void Button1_Click4(object sender, EventArgs e)
        {
            if (GlobalVariabel.coin > 0)
            {
                Random random = new Random();
                await Task.Delay(2000);
                angka1.Text = (random.Next(0, 10)).ToString();
                await Task.Delay(2000);
                angka2.Text = (random.Next(0, 10)).ToString();
                await Task.Delay(2000);
                angka3.Text = (random.Next(0, 10)).ToString();

                DateTime currentDateTime = DateTime.Now;
                string formattedDateTime = currentDateTime.ToString("yyMMddHHmmss");


                CRUD crud = new CRUD();

                crud.game_id = "101";
                crud.betID = formattedDateTime + GlobalVariabel.coin;
                crud.jumlah_bet = 1;
                crud.memberID = GlobalVariabel.userid;

                crud.coinupdate = GlobalVariabel.coin - 1;
                crud.coinUpdate();
                crud.betHistory();


                if (angka1.Text == angka2.Text && angka2.Text == angka3.Text)
                {
                    peringatan.Text = "Kamu Menang! Saldo mu X100!";
                    GlobalVariabel.coin = GlobalVariabel.coin + 99;
                    Label2.Text = GlobalVariabel.coin.ToString();
                    crud.jumlah_menang = 100;
                    crud.winnerID = formattedDateTime + GlobalVariabel.userid + 9999;
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                    crud.winner();
                }
                else if (angka1.Text == angka2.Text || angka2.Text == angka3.Text)
                {
                    peringatan.Text = "Kamu Menang! Saldo mu X5!";
                    GlobalVariabel.coin = GlobalVariabel.coin + 4;
                    Label2.Text = GlobalVariabel.coin.ToString();
                    crud.jumlah_menang = 5;
                    crud.winnerID = formattedDateTime + GlobalVariabel.userid + 9999;
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                    crud.winner();
                }
                else
                {
                    peringatan.Text = "Kamu Kalah";
                    GlobalVariabel.coin = GlobalVariabel.coin - 1;
                    Label2.Text = GlobalVariabel.coin.ToString();
                }
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}