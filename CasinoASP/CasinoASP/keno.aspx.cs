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
    public partial class keno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GlobalVariabel.userid != "Guest")
            {
                usercoinlabel.Text = GlobalVariabel.coin.ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected async void kenosubmit_Click(object sender, EventArgs e)
        {
            if (GlobalVariabel.coin > 0)
            {
                await Task.Delay(4500);

                GlobalVariabel.coin = GlobalVariabel.coin - 1;
                usercoinlabel.Text = GlobalVariabel.coin.ToString();

                DateTime currentDateTime = DateTime.Now;
                string formattedDateTime = currentDateTime.ToString("yyMMddHHmmss");


                CRUD crud = new CRUD();
                crud.game_id = "102";
                crud.coinupdate = GlobalVariabel.coin;
                crud.coinUpdate();
                crud.betID = formattedDateTime + GlobalVariabel.userid;
                crud.jumlah_bet = 1;
                crud.betHistory();

                Random random = new Random();
                int[] generatedNumbers = new int[4];
                bool isAngka1Match = false;
                bool isAngka2Match = false;
                bool isAngka3Match = false;
                bool isAngka4Match = false;

                // Generate random numbers
                for (int i = 0; i < generatedNumbers.Length; i++)
                {
                    generatedNumbers[i] = random.Next(0, 30);
                }

                // Display generated numbers
                dealernumber1.Text = generatedNumbers[0].ToString();
                dealernumber2.Text = generatedNumbers[1].ToString();
                dealernumber3.Text = generatedNumbers[2].ToString();
                dealernumber4.Text = generatedNumbers[3].ToString();

                // Check if angka1 matches any generated number
                foreach (int number in generatedNumbers)
                {
                    if (Convert.ToInt32(angkaselector1.Text) == number)
                    {
                        isAngka1Match = true;
                        break;
                    }
                }

                // Check if angka2 matches any generated number
                foreach (int number in generatedNumbers)
                {
                    if (Convert.ToInt32(angkaselector2.Text) == number)
                    {
                        isAngka2Match = true;
                        break;
                    }
                }

                // Check if angka3 matches any generated number
                foreach (int number in generatedNumbers)
                {
                    if (Convert.ToInt32(angkaselector3.Text) == number)
                    {
                        isAngka3Match = true;
                        break;
                    }
                }

                // Check if angka4 matches any generated number
                foreach (int number in generatedNumbers)
                {
                    if (Convert.ToInt32(angkaselector4.Text) == number)
                    {
                        isAngka4Match = true;
                        break;
                    }
                }

                // Perform actions based on the results
                if (isAngka1Match && isAngka2Match && isAngka3Match && isAngka4Match)
                {
                    resultlabel.Text = "HOKI!!!! DAPAT 500 COIN";
                    GlobalVariabel.coin = GlobalVariabel.coin + 500;
                    usercoinlabel.Text = GlobalVariabel.coin.ToString();
                    crud.jumlah_menang = 500;
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                    crud.winnerID = formattedDateTime + GlobalVariabel.userid + 8888;
                    crud.winner();
                }
                else if ((isAngka1Match && isAngka2Match && isAngka3Match) || (isAngka1Match && isAngka2Match && isAngka4Match) || (isAngka1Match && isAngka3Match && isAngka4Match) || (isAngka2Match && isAngka3Match && isAngka4Match))
                {
                    resultlabel.Text = "Benar 3! Dapat 8 Coin";
                    GlobalVariabel.coin = GlobalVariabel.coin + 8;
                    usercoinlabel.Text = GlobalVariabel.coin.ToString();
                    crud.jumlah_menang = 8;
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                    crud.winnerID = formattedDateTime + GlobalVariabel.userid + 8888;
                    crud.winner();
                }
                else if (isAngka1Match && isAngka2Match || isAngka1Match && isAngka3Match || isAngka1Match && isAngka4Match || isAngka2Match && isAngka3Match || isAngka2Match && isAngka4Match || isAngka3Match && isAngka4Match)
                {
                    resultlabel.Text = "Benar 2! Dapat 4 Coin";
                    GlobalVariabel.coin = GlobalVariabel.coin + 4;
                    usercoinlabel.Text = GlobalVariabel.coin.ToString();
                    crud.jumlah_menang = 4;
                    crud.winnerID = formattedDateTime + GlobalVariabel.userid + 8888;
                    crud.winner();
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                }
                else if (isAngka1Match || isAngka2Match || isAngka3Match || isAngka4Match)
                {
                    resultlabel.Text = "Benar 1! Dapat 2 Coin";
                    GlobalVariabel.coin = GlobalVariabel.coin + 2;
                    usercoinlabel.Text = GlobalVariabel.coin.ToString();
                    crud.jumlah_menang = 2;
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                    crud.winnerID = formattedDateTime + GlobalVariabel.userid + 8888;
                    crud.winner();
                }
                else
                {
                    resultlabel.Text = "Kamu gagal!";
                    GlobalVariabel.coin = GlobalVariabel.coin + 0;
                    usercoinlabel.Text = GlobalVariabel.coin.ToString();
                    crud.coinupdate = GlobalVariabel.coin;
                    crud.coinUpdate();
                }


            }
            else
            {
                await Task.Delay(500);
                Response.Redirect("Home.aspx");
            }
        }
    }
}