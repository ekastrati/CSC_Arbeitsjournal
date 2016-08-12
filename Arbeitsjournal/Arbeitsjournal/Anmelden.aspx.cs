using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arbeitsjournal
{
    public partial class Anmelden : System.Web.UI.Page
    {
        private IDictionary<string, string> user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] != null)
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnAnmelden_Click(object sender, EventArgs e)
        {
            if (!(txtUsername.Text.Length > 20 && txtPassword.Text.Length > 20))
            {
                user = new Dictionary<string, string>();
                user["username"] = txtUsername.Text;
                Session["LoggedIn"] = user;
                Response.Redirect("Index.aspx");
            }
        }
    }
}