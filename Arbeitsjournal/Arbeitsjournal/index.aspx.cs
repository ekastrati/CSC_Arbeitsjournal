using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arbeitsjournal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblProfil.Text = "Endrit Kastrati";
            //using (var client = new WebClient())
            //{
            //    var values = new NameValueCollection();
            //    values["thing1"] = "hello";
            //    values["thing2"] = "world";

            //    var response = client.UploadValues("http://www.example.com/recepticle.aspx", values);

            //    var responseString = Encoding.Default.GetString(response);
            //}
        }

        protected void btnProfilbearbeiten_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ProfilBearbeiten.aspx");
        }
    }
}