using Dapper;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace _Core.CommonDal
{
    public class SqlDataAccess
    {
        public static string GetConnectionString(string connectionName = "001_CMS")
        {
            return ConfigurationManager.ConnectionStrings[connectionName].ConnectionString;
        }

        public static List<TType> LoadData<TType>(string sql)
        {
            using (IDbConnection conn = new SqlConnection(GetConnectionString()))
            {
                return conn.Query<TType>(sql).ToList();
            }
        }

        public static int SaveData<TType>(string sql, TType parameters)
        {
            using (IDbConnection conn = new SqlConnection(GetConnectionString()))
            {
                return conn.Execute(sql, parameters);
            }
        }
    }
}
