using System;
using NUnit.Framework.Api;
using NUnit.Framework;
using Arbeitsjournal.DataAccess;
using DataLayer.services;
using DataLayer.DataMapper;
using DataLayer;

namespace Arbeitsjournal.DataAccess.Tests
{
    public class UnitTest1
    {
        [TestCase]
        public void TestMethodBenutzername()
        {
            IDataConnector dt = new DataConnector();
            BenutzerDAO benutzer = new BenutzerDAO(dt);
            BenutzerDTO benutzerDTO = benutzer.FindBenutzerByBenutzername("benutzername");
            Assert.IsNotEmpty(benutzerDTO.Id);
            Assert.AreEqual("benutzername", benutzerDTO.Username);
        }
    }
}
