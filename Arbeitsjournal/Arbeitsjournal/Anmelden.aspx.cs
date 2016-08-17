using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using System.Data;

namespace Arbeitsjournal
{
    public partial class Anmelden : System.Web.UI.Page
    {
        private DataConnector connector;
        private IDictionary<string, string> user;
        private string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            InitializeVariables();

            if (Session["LoggedIn"] != null)
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnAnmelden_Click(object sender, EventArgs e)
        {
            query = String.Format(@"SELECT * FROM arbeitsjournaldb.benutzer where benutzername = '{0}' and passwort = '{1}'", this.txtUsername.Text, txtPassword.Text);
            DataTable dataTable = connector.DataSelect(query);
            bool foundWithTheEnteredDates = false;
            foreach (DataRow dr in dataTable.Rows)
            {
                foreach (DataColumn dc in dataTable.Columns)
                {
                    string username = dr[dc].ToString();
                    if (username == txtUsername.Text)
                    {
                        user["username"] = username;
                        Session["LoggedIn"] = user;
                        foundWithTheEnteredDates = true;
                    }
                }
            }
            if (foundWithTheEnteredDates)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                string fehlermeldung = "Bitte Überprüfen Sie nochmal Ihre Eingaben.";
                fehlermeldung += "\n Nicht mehr als 20 Zeichen pro Textfeld und nicht weniger als sechs Zeichen beim Passwort.";
                this.lblErrorMessage.Text = fehlermeldung;
            }
        }

        private void InitializeVariables()
        {
            user = new Dictionary<string, string>();
            connector = new DataConnector();
        }
    }
}