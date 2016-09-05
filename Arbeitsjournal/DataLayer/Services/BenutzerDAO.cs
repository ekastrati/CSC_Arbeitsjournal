using DataLayer.DataMapper;
using DataLayer.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Collections;

namespace DataLayer.services
{
    public class BenutzerDAO : IBenutzerDAO
    {
        public DataConnector dataConnector { get; set; }

        public BenutzerDAO(IDataConnector dataConnector)
        {
            this.dataConnector = (DataConnector)dataConnector;
        }

        public BenutzerDTO FindBenutzerById(string id)
        {
            return null;
        }

        public List<BenutzerDTO> GetAllByBenutzername()
        {
            BenutzerMapper mapper = new BenutzerMapper();
            return mapper.MapAllBenutzerFromDataRows(dataConnector.DataSelect(""));
        }

        public BenutzerDTO FindBenutzerByBenutzername(string benutzername)
        {
            BenutzerMapper mapper = new BenutzerMapper();
            return mapper.MapBenutzerFromDataRow(dataConnector.DataSelect(String.Format("Select * from arbeitsjournaldb.benutzer where benutzername = '{0}';", benutzername)).Rows[0]);
        }
    }
}
