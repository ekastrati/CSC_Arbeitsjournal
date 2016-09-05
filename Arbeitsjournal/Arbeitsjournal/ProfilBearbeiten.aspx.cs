using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;

namespace Arbeitsjournal
{
    public partial class ProfilBearbeiten : System.Web.UI.Page
    {
        private DataConnector connector;
        private IDictionary<string, string> user;
        private string userPassword;
        private string query = @"update `arbeitsjournaldb`.`benutzer` ";

        protected void Page_Load(object sender, EventArgs e)
        {
            connector = new DataConnector();
            user = (IDictionary<string, string>)Session["LoggedIn"];
            userPassword = (string)Session["password"];
        }

        protected void passwordChange_Click(object sender, EventArgs e)
        {
            if (this.txtPassword.Text == Convert.ToString(Session["password"]))
            {
                Response.Redirect("/Passwort.aspx");
            }
            else
            {
                this.lblFehlermeldung.Text = "BITTE ZUERST DAS RICHTIGE PASSWORT EINGEBEN, DAMIT DIE ÄNDERUNGEN VORGENOMMEN WERDEN KÖNNEN";
            }
        }

        protected void applyChanges_Click(object sender, EventArgs e)
        {
            if (this.txtPassword.Text == Convert.ToString(Session["password"]))
            {
                DecideWitchDataMustBeChanged();
                Response.Redirect("/Index.aspx");
            }
            else
            {
                this.lblFehlermeldung.Text = "BITTE ZUERST DAS RICHTIGE PASSWORT EINGEBEN, DAMIT DIE ÄNDERUNGEN VORGENOMMEN WERDEN KÖNNEN";
            }
        }

        public void expandQuery(string column, string newValue){
            query += String.Format("SET `{0}` =  `{1}` ", column, newValue);
            return; 
        }

        private void DecideWitchDataMustBeChanged()
        {
            if (this.txtUsername.Text != String.Empty)
            {
                expandQuery("benutzername", txtUsername.Text);
            }

            if (this.txtPrename.Text != String.Empty)
            {
                query += "SET `vorname` = '" + txtPrename.Text + "' ";
            }

            if (this.txtName.Text != String.Empty)
            {
                query += "SET `name` = '" + txtName.Text + "' ";
            }

            if (this.txtEmail.Text != String.Empty)
            {
                query += "SET `vorname` = '" + txtEmail.Text + "' ";
            }

            query += "WHERE `benutzername` = " + String.Format("'{0}'", (string)user["username"]);

            connector.DataUpdate(query);
        }
    }
}