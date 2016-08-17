using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataLayer;

namespace Arbeitsjournal.WebService.Controllers
{
    public class BenutzerController : ApiController
    {
        private DataConnector connector;

        [HttpGet]
        public IHttpActionResult GetUserById([FromUri] string idBenutzer)
        {
            connector = new DataConnector();
            DataTable dataTable = connector.DataSelect(string.Format(@"select benutzername from benutzer where idBenutzer = {0};", idBenutzer));
            return Ok(dataTable.Rows[0]);
        }

        [HttpPost]
        public IHttpActionResult ChangePasswordByUserId([FromUri] string passwort, [FromUri] int idBenutzer)
        {
            connector = new DataConnector();
            int result = connector.DataUpdate(string.Format(@"UPDATE arbeitsjournaldb.benutzer SET passwort = '{0}' WHERE idBenutzer = {1};", passwort, idBenutzer));
            if(result > 0){
                return Ok("Password erfolgreich geändert");
            }
            return BadRequest("Passwort konnte nicht geändert werden");
        }
    }
}
