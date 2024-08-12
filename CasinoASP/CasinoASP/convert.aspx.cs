using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasinoASP
{
    public partial class convert : System.Web.UI.Page
    {
        public int moneyadd;
        public int coinadd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GlobalVariabel.userid != "Guest")
            {
                coinlabel1.Text = GlobalVariabel.coin.ToString();
                coinlabel2.Text = GlobalVariabel.coin.ToString();

                cashlabel1.Text = GlobalVariabel.money.ToString();
                cashlabel2.Text = GlobalVariabel.money.ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(cointext1.Text) > 0)
            {
                if (moneyadd <= GlobalVariabel.money)
                {
                    moneyadd = Convert.ToInt32(cointext1.Text) * 5000;
                    CRUD update = new CRUD();
                    GlobalVariabel.coin = GlobalVariabel.coin + Convert.ToInt32(cointext1.Text);
                    GlobalVariabel.money = GlobalVariabel.money - moneyadd;

                    update.coinupdate = GlobalVariabel.coin;
                    update.cashupdate = GlobalVariabel.money;
                    update.coinUpdate();
                    update.cashUpdate();

                    peringatan1.Text= "Coin exchange berhasil! Cash to Coin";
                    coinlabel1.Text = GlobalVariabel.coin.ToString();
                    coinlabel2.Text = GlobalVariabel.coin.ToString();

                    cashlabel1.Text = GlobalVariabel.money.ToString();
                    cashlabel2.Text = GlobalVariabel.money.ToString();
                }
                else
                {
                    peringatan1.Text = "Cash Tidak Cukup!";
                }
            }
            else
            {
                peringatan1.Text = "Coin harus lebih dari 1!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(cointext2.Text) > 0)
            {
                if (Convert.ToInt32(cointext2.Text) <= GlobalVariabel.coin)
                {
                    moneyadd = Convert.ToInt32(cointext2.Text) * 4900;
                    CRUD update = new CRUD();
                    GlobalVariabel.coin = GlobalVariabel.coin - Convert.ToInt32(cointext2.Text);
                    GlobalVariabel.money = GlobalVariabel.money + moneyadd;

                    update.coinupdate = GlobalVariabel.coin;
                    update.cashupdate = GlobalVariabel.money;
                    update.coinUpdate();
                    update.cashUpdate();

                    peringatan2.Text = "Coin exchange berhasil! Coin to Cash";
                    coinlabel1.Text = GlobalVariabel.coin.ToString();
                    coinlabel2.Text = GlobalVariabel.coin.ToString();

                    cashlabel1.Text = GlobalVariabel.money.ToString();
                    cashlabel2.Text = GlobalVariabel.money.ToString();
                }
                else
                {
                    peringatan2.Text = "Coin Tidak Cukup!";
                }
            }
            else
            {
                peringatan2.Text = "Coin harus lebih dari 1!";
            }
        }
    }
}