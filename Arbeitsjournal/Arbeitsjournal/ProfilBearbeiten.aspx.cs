using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arbeitsjournal
{
    public partial class ProfilBearbeiten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void passwordChange_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Passwort.aspx");
        }
    }
}