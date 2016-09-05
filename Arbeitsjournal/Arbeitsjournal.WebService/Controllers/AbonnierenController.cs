using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DataLayer;
using Arbeitsjournal.WebService.Models;
using System.Data;

namespace Arbeitsjournal.WebService.Controllers
{
    // Class for subscribe and cancel the subscription
    // Inherits from the ApiController
    public class AbonnierenController : ApiController
    {
        private DataConnector connector;

        // Gets all the people that a certain person subscribed
        // returns a DataTable
        [HttpGet]
        public IHttpActionResult GetAllPeopleThatISubscribed([FromUri] string benutzername)
        {
            connector = new DataConnector();
            DataTable dataTable = connector.DataSelect(string.Format(@"select * from benutzer where idBenutzer in (select abonnierterBenutzerId from arbeitsjournaldb.benutzer_abonniert_benutzer where benutzerId =  (select idBenutzer from arbeitsjournaldb.benutzer where benutzername = '{0}'));", benutzername));

            try
            {
                List<Benutzer> benutzerListe = new List<Benutzer>();
                foreach (DataRow dr in dataTable.Rows)
                {
                    Benutzer benutzer = new Benutzer();
                    foreach (DataColumn dc in dataTable.Columns)
                    {
                        benutzer.Id = (int)dr["idBenutzer"];
                        benutzer.Username = (string)dr["benutzername"];
                    }
                    benutzerListe.Add(benutzer);
                }

                return Ok(benutzerListe);
            }
            catch (Exception e)
            {
                return BadRequest(String.Format("Fehler beim Abruf des Benutzers: {0}", e.Message));
            }
        }

        // This function is to subscribe a person
        // returns a result if succesfull then over 0
        [HttpPost]
        public IHttpActionResult PersonSubcribesPerson([FromUri] string benutzername, [FromUri] string wantsToSubscribeBenutzername)
        {
            connector = new DataConnector();
            int result = connector.DataInsert(string.Format(@"insert into arbeitsjournaldb.benutzer_abonniert_benutzer (benutzerId, abonnierterBenutzerId) values ((select idBenutzer from arbeitsjournaldb.benutzer where benutzername = '{0}'), (select idBenutzer from arbeitsjournaldb.benutzer where benutzername = '{1}'));", benutzername, wantsToSubscribeBenutzername));

            if (result > 0)
            {
                return Ok("Person erfolgreich abonniert");
            }

            return BadRequest("Person abonnieren fehlgeschlagen");
        }

        // With this function a member cans cancel his subscription he has on a person
        // returns a result if succesfull over 0
        [HttpPost]
        public IHttpActionResult CancelTheSubscription([FromUri] string benutzername, [FromUri] string wantsToCancelSubscriptionOfBenutzername)
        {
            connector = new DataConnector();
            int result = connector.DataDelete(string.Format(@"delete from arbeitsjournaldb.benutzer_abonniert_benutzer where benutzerId = (select benutzerId from arbeitsjournaldb.benutzer_abonniert_benutzer where benutzername = '{0}' ) and abonnierterBenutzerId = (select benutzerId from arbeitsjournaldb.benutzer_abonniert_benutzer where benutzername = '{1}' ););", benutzername, wantsToCancelSubscriptionOfBenutzername));

            if (result > 0)
            {
                return Ok("Person erfolgreich deabonniert");
            }

            return BadRequest("Person deabonnieren fehlgeschlagen");
        }
    }
}
