using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using DataLayer;

namespace Arbeitsjournal
{
    public partial class register : System.Web.UI.Page
    {
        private DataConnector connector;
        private IDictionary<string, string> user;
        private string query;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregistrieren_Click(object sender, EventArgs e)
        {
         //   SmtpClient smtpClient = new SmtpClient("doNotReply@endrit.com", 25);

            if (this.txtUsername.Text.Length > 0 && System.Text.RegularExpressions.Regex.IsMatch(txtEmail.Text, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*") != false &&
                this.txtPassword.Text.Length <= 20 && this.txtPassword.Text == this.txtRepeatPassword.Text &&
                this.txtPrename.Text.Length > 0 && this.txtName.Text.Length > 0)
            {
                connector = new DataConnector();
                query = String.Format(@"INSERT INTO `arbeitsjournaldb`.`benutzer` (`benutzername`, `passwort`, `email`, `vorname`, `name`) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", this.txtUsername.Text, this.txtPassword.Text, this.txtEmail.Text, this.txtPrename.Text, this.txtName.Text);
                int result = connector.DataInsert(query);
                
                if (result != 0 && result != -1)
                {
                    user = new Dictionary<string, string>();
                    user["username"] = txtUsername.Text;
                    user["prename"] = txtPrename.Text;
                    user["name"] = txtName.Text;
                    user["email"] = txtEmail.Text;
                    Session["LoggedIn"] = user;
                    Response.Redirect("Index.aspx");
                }
            }
        }
    }
}