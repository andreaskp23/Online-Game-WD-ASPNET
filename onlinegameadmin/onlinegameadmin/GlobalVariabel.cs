using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace onlinegameadmin
{
    public class GlobalVariabel
    {
        public static string connString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public static string adminid = "Guest";
    }
}