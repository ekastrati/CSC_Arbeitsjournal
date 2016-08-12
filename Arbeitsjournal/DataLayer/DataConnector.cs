using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace DataLayer
{
    public class DataConnector
    {
        protected OleDbDataAdapter DataAdapter = new OleDbDataAdapter();
        public string errorMessage = "";
        public DataConnector(string ConnectionString)
        {
            OleDbConnection Connection = new OleDbConnection(ConnectionString);
            this.DataAdapter.SelectCommand = new OleDbCommand("", Connection);
            this.DataAdapter.InsertCommand = new OleDbCommand("", Connection);
            this.DataAdapter.UpdateCommand = new OleDbCommand("", Connection);
            this.DataAdapter.DeleteCommand = new OleDbCommand("", Connection);
        }

        public DataTable DataSelect(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                DataAdapter.SelectCommand.CommandText = query;
                DataAdapter.SelectCommand.Connection.Open();
                DataAdapter.Fill(dt);
                DataAdapter.SelectCommand.Connection.Close();
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                DataAdapter.SelectCommand.Connection.Close();
            }
            return dt;
        }

        public int DataInsert(string query)
        {
            int result = 0;
            try
            {
                DataAdapter.InsertCommand.CommandText = query;
                DataAdapter.InsertCommand.Connection.Open();
                result = DataAdapter.InsertCommand.ExecuteNonQuery();
                DataAdapter.InsertCommand.Connection.Close();
                return result;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                DataAdapter.InsertCommand.Connection.Close();
                return 0;
            }
        }

        public int DataUpdate(string query)
        {
            int result = 0;
            try
            {
                DataAdapter.UpdateCommand.CommandText = query;
                DataAdapter.UpdateCommand.Connection.Open();
                result = DataAdapter.UpdateCommand.ExecuteNonQuery();
                DataAdapter.UpdateCommand.Connection.Close();
                return result;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                DataAdapter.UpdateCommand.Connection.Close();
                return 0;
            }
        }

        public int DataDelete(string query)
        {
            int result = 0;
            try
            {
                DataAdapter.DeleteCommand.CommandText = query;
                DataAdapter.DeleteCommand.Connection.Open();
                result = DataAdapter.DeleteCommand.ExecuteNonQuery();
                DataAdapter.DeleteCommand.Connection.Close();
                return result;
            }
            catch (Exception err)
            {
                errorMessage = err.Message;
                DataAdapter.UpdateCommand.Connection.Close();
                return 0;
            }
        }
    }
}