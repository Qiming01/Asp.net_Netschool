using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class Database
    {
        private SqlConnection connection;

        public void OpenDatabase()
        {
            if (connection == null)
            {
                connection = new SqlConnection("data Source=(local);database=NetSchool;user id=qiming;pwd=123456");
            }
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                try
                {
                    connection.Open();
                }
                catch (Exception ex)
                {
                    // 将异常抛出
                    throw new Exception(ex.Message, ex);
                }
            }
        }

        public void CloseDatabase()
        {
            if (connection != null)
            {
                if (connection.State == System.Data.ConnectionState.Open)
                    connection.Close();
            }
        }

        /// <summary>
        /// 运行SELECT语句，将查询结果以SqlDataReader对象返回
        /// </summary>
        /// <param name="sqlCmd">sql command text</param>
        /// <returns>SqlDataReader Object</returns>
        /// <exception cref="Exception"></exception>
        public SqlDataReader SelectDatabase(string sqlCmd)
        {
            OpenDatabase();
            SqlCommand command = new SqlCommand(sqlCmd, connection);
            SqlDataReader sqlDataReader = null;
            try
            {
                sqlDataReader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message, ex); 
            }
            return sqlDataReader;
        }
    }
}