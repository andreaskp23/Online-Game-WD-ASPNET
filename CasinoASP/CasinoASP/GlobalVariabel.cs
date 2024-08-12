using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace CasinoASP
{
    public class GlobalVariabel
    {
        public static string connString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public static string userid = "Guest";
        public static string username = "Guest";
        public static string Email = "Guest";
        public static int coin = 0;
        public static int money = 0;
    }
}