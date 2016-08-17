using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    class Program
    {
        public static void Main()
        {
            //DataConnector connector = new DataConnector(Settings.Default.ConnectionString);
            //var result = connector.DataSelect("select * from Benutzer");
            //Console.WriteLine("resultat: {0}", result.Rows[0].Table.DataSet);
            //Console.ReadLine();

            MySql.Data.MySqlClient.MySqlConnection dbConn = new MySql.Data.MySqlClient.MySqlConnection("Persist Security Info=False;server=localhost;database=ArbeitsjournalDB;uid=root;password=" + 123456);
            string idnumber = "-1";

            MySqlCommand cmd = dbConn.CreateCommand();
            cmd.CommandText = "select * from benutzer";

            try
            {
                dbConn.Open();
            }
            catch (Exception erro)
            {
                //MessageBox.Show("Erro" + erro);
                dbConn.Close();
            }

            MySqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                idnumber = reader.ToString();
                Console.WriteLine("idnumber: {0}", reader.GetValue(2));
                
            }
            Console.ReadLine();

        }
    }
}
