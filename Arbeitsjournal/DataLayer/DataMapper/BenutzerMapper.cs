using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DataLayer.DataMapper
{
    public class BenutzerMapper
    {

        public BenutzerDTO MapBenutzerFromDataRow(DataRow benutzerRow)
        {
            BenutzerDTO benutzer = new BenutzerDTO();

            benutzer.Id = benutzerRow["idBenutzer"].ToString();
            benutzer.Name = benutzerRow["name"].ToString();
            benutzer.Prename = benutzerRow["vorname"].ToString();
            benutzer.Username = benutzerRow["benutzername"].ToString();
            benutzer.Email = benutzerRow["email"].ToString();

            return benutzer;
        }

        public List<BenutzerDTO> MapAllBenutzerFromDataRows(DataTable table)
        {
            List<BenutzerDTO> benutzerList = new List<BenutzerDTO>();

            foreach (DataRow row in table.Rows)
            {
                benutzerList.Add(MapBenutzerFromDataRow(row));
            }

            return benutzerList;
        }
    }
}
