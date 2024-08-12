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
    class Login
    {
        public string memberID;
        public int loginStatus = 0;
        public string peringatankoneksi;

        Koneksi koneksi = new Koneksi();

           public void masukMember()
           {
            koneksi.bukaKoneksi();
            try
            {
                string query = "SELECT member_id, nama_member, email, coin, cash from Member WHERE member_id=@memberID";
                SqlCommand com = new SqlCommand(query, koneksi.con);
                com.Parameters.AddWithValue("@memberID", memberID);
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    string member_id = dr[0].ToString();
                    string nama_member = dr[1].ToString();
                    string email = dr[2].ToString();
                    String coin = dr[3].ToString();
                    String cash = dr[4].ToString();

                    GlobalVariabel.userid = member_id;
                    GlobalVariabel.username = nama_member;
                    GlobalVariabel.Email = email;
                    GlobalVariabel.coin = Convert.ToInt32(coin);
                    GlobalVariabel.money = Convert.ToInt32(cash);
                    loginStatus = 1;
                }

                else
                {
                    loginStatus = 0;
                }
            }
            catch (Exception ex)
            {
                peringatankoneksi = "error ditemukan";
            }
            koneksi.tutupKoneksi();
        }
    }
}
