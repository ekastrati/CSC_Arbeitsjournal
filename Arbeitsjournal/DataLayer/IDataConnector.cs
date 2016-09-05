using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DataLayer
{
    public interface IDataConnector
    {
        DataTable DataSelect(string query);
    }
}
