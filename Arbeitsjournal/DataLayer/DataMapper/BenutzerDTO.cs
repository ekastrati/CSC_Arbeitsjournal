using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer.DataMapper
{
    public class BenutzerDTO
    {
        private string username;
        private string password;
        private string prename;
        private string name;
        private string email;
        private string id;

        public string Username { get { return username; } set { username = value; } }
        public string Password { get { return password; } set { password = value; } }
        public string Prename { get { return prename; } set { prename = value; } }
        public string Name { get { return name; } set { name = value; } }
        public string Email { get { return email; } set { email = value; } }
        public string Id { get { return id; } set { id = value; } }
    }
}
