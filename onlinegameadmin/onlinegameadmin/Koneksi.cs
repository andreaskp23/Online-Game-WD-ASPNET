using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace onlinegameadmin
{
    public class Koneksi
    {
        string source;
        public string Status;
        public string Status2;
        public SqlConnection con;

        public Koneksi()
        {
            try
            {
                source = "Integrated Security=true;Initial Catalog=OnlineGame;Data Source=.";
                con = new SqlConnection(source);
            }
            catch (SqlException sqle)
            {
                Status = "Error : " + sqle.Message;
            }
        }

        public void bukaKoneksi()
        {
            try
            {
                con.Open();
                Status2 = "Berhasil membuka koneksi";
            }
            catch (SqlException sqle)
            {
                Status = "Error : " + sqle.Message;
            }
        }

        public void tutupKoneksi()
        {
            try
            {
                con.Close();
                Status = "Berhasil menutup koneksi";
            }
            catch (SqlException sqle)
            {
                Status = "Error : " + sqle.Message;
            }
        }
    }
}