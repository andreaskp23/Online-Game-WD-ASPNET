using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace onlinegameadmin
{
    public class CRUD
    {
        public string memberID;
        public int loginStatus = 0;
        public string peringatankoneksi;
        public string userid;
        public string username;
        public int cashinput;
        public int Cash;
        public string messagecash;
        public string transactionID;
        public int jumlah;
        public string membername;
        public int membercash;

        Koneksi koneksi = new Koneksi();
        public void addCash()
        {
            try
            {
                koneksi.bukaKoneksi();
                string query = "UPDATE Member SET cash = @cash WHERE member_id = @memberid;";
                SqlCommand com = new SqlCommand(query, koneksi.con);
                com.Parameters.AddWithValue("@memberid", memberID);
                com.Parameters.AddWithValue("@cash", Cash);
                int i = com.ExecuteNonQuery();
                if (i > 0)
                {
                    messagecash = "Cash berhasil dimasukan. Saldo: " + Cash;
                }
                else
                {
                    messagecash = "Cash gagal dimasukan";
                }
            }
            catch (Exception ex)
            {
                messagecash = ex.Message;
            }
            finally
            {
                koneksi.tutupKoneksi();
            }
        }

        public void transaction()
        {
            try
            {
                koneksi.bukaKoneksi();
                string query = "INSERT INTO dbo.Transactions (transaction_id, member_id, jumlah, tanggal_transaksi) VALUES (@transaction_id, @member_id, @jumlahtransaksi, GETDATE());";
                SqlCommand com = new SqlCommand(query, koneksi.con);
                com.Parameters.AddWithValue("@transaction_id", transactionID);
                com.Parameters.AddWithValue("@member_id", memberID);
                com.Parameters.AddWithValue("@jumlahtransaksi", jumlah);
                int i = com.ExecuteNonQuery();
                if (i > 0)
                {
                }
                else
                {
                }
            }
            catch (Exception ex)
            {
                messagecash = ex.Message;
            }
            finally
            {
                koneksi.tutupKoneksi();
            }
        }

        public void memberidcheck()
        {
            koneksi.bukaKoneksi();
            try
            {
                string query = "SELECT nama_member, cash, member_id from Member WHERE member_id=@memberID";
                SqlCommand com = new SqlCommand(query, koneksi.con);
                com.Parameters.AddWithValue("@memberID", memberID);
                SqlDataReader checkmember = com.ExecuteReader();
                if (checkmember.Read())
                {
                    string nama_member = checkmember[0].ToString();
                    int cash = Convert.ToInt32(checkmember[1].ToString());
                    string memberid = checkmember[2].ToString();
                    messagecash= "Nama Member adalah " + nama_member + " Cash: " + cash;
                    membername = nama_member;
                    membercash = cash;
                    memberID = memberid;
                }
                else
                {
                    messagecash = "Member tidak ada.";
                    membername = "";
                    memberID = "";
                }
            }
            catch (Exception ex)
            {
                messagecash = "Error Data: " + ex.Message;
            }
            koneksi.tutupKoneksi();
        }
    }
}