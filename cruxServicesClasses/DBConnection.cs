using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cruxServicesClasses
{
    public static class DBConnection
    {
        static public SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Toshiba\Desktop\FYP\Dev\cruxServicesWeb\cruxServicesWeb\App_Data\cruxDB.mdf;Integrated Security=True");
    }
}
