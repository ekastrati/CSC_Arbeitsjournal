using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataLayer;
using Arbeitsjournal.WebService.Models;

namespace Arbeitsjournal.WebService.Controllers
{
    public class BenutzerController : ApiController
    {
        private DataConnector connector;

        [HttpPost]
        public IHttpActionResult GetAllByUserId([FromUri] string passwort, [FromUri] int idBenutzer)
        {
            connector = new DataConnector();
            DataTable dataTable = connector.DataSelect(string.Format(@"select * from benutzer where idBenutzer = '{0}';", idBenutzer));
            
            try{
            Benutzer benutzer = new Benutzer();
            benutzer.Id = dataTable.Rows[0].["idBenutzer"];
            benutzer.Username = dataTable.Rows[0].["benutzername"];
            benutzer.Password = dataTable.Rows[0].["passwort"];
            benutzer.Prename = dataTable.Rows[0].["vorname"];
            benutzer.Name = dataTable.Rows[0].["name"];
            benutzer.Email = dataTable.Rows[0].["email"];

             foreach (DataRow dr in dataTable.Rows)
            {
                foreach (DataColumn dc in dataTable.Columns)
                {
                    
                }
            }
            return Ok(benutzer);
            }
            catch(Exception e){
                return BadRequest("Fehler beim Abruf des Benutzers");
            }
        }

        [HttpGet]
        public IHttpActionResult GetUserById([FromUri] string idBenutzer)
        {
            connector = new DataConnector();
            DataTable dataTable = connector.DataSelect(string.Format(@"select benutzername, idBenutzer from benutzer where idBenutzer = '{0}';", idBenutzer));

            Benutzer benutzer = new Benutzer();
            benutzer.Id = dataTable.Rows[0].["idBenutzer"];
            benutzer.Username = dataTable.Rows[0].["username"];

            return Ok(benutzer);
        }

        [HttpGet]
        public IHttpActionResult GetUserIdByUsername([FromUri] string benutzername)
        {
            connector = new DataConnector();
            DataTable dataTable = connector.DataSelect(string.Format(@"select idBenutzer from benutzer where benutzername = '{0}';", benutzername));
            if (dataTable == null)
            {
                return BadRequest("Benutzerid konnte nicht geladen werden");
            }
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
