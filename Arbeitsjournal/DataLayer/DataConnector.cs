using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

namespace DataLayer
{
    public class DataConnector
    {
    //    protected OleDbDataAdapter DataAdapter = new OleDbDataAdapter();
        public string errorMessage = "";
        protected MySqlDataAdapter dataAdapter = new MySql.Data.MySqlClient.MySqlDataAdapter();
        private const string connectionString = "Persist Security Info=False;server=localhost;database=ArbeitsjournalDB;uid=root;password=123456";
        public DataConnector()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            this.dataAdapter.SelectCommand = new MySqlCommand("", connection);
            this.dataAdapter.InsertCommand = new MySqlCommand("", connection);
            this.dataAdapter.UpdateCommand = new MySqlCommand("", connection);
            this.dataAdapter.DeleteCommand = new MySqlCommand("", connection);
        }

        public DataTable DataSelect(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                dataAdapter.SelectCommand.CommandText = query;
                dataAdapter.SelectCommand.Connection.Open();
                dataAdapter.Fill(dt);
                return dt;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                return null;
            }
            finally
            {
                dataAdapter.SelectCommand.Connection.Close();
            }
            
        }

        public int DataInsert(string query)
        {
            int result = 0;
            try
            {
                dataAdapter.InsertCommand.CommandText = query;
                dataAdapter.InsertCommand.Connection.Open();
                result = dataAdapter.InsertCommand.ExecuteNonQuery();
                dataAdapter.InsertCommand.Connection.Close();
                return result;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                dataAdapter.InsertCommand.Connection.Close();
                return 0;
            }
        }

        public int DataUpdate(string query)
        {
            int result = 0;
            try
            {
                dataAdapter.UpdateCommand.CommandText = query;
                dataAdapter.UpdateCommand.Connection.Open();
                result = dataAdapter.UpdateCommand.ExecuteNonQuery();
                dataAdapter.UpdateCommand.Connection.Close();
                return result;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                dataAdapter.UpdateCommand.Connection.Close();
                return 0;
            }
        }

        public int DataDelete(string query)
        {
            int result = 0;
            try
            {
                dataAdapter.DeleteCommand.CommandText = query;
                dataAdapter.DeleteCommand.Connection.Open();
                result = dataAdapter.DeleteCommand.ExecuteNonQuery();
                dataAdapter.DeleteCommand.Connection.Close();
                return result;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                dataAdapter.UpdateCommand.Connection.Close();
                return 0;
            }
        }
    }
}