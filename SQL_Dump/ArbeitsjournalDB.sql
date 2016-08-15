drop database if exists ArbeitsjournalDB;

create database ArbeitsjournalDB;

use ArbeitsjournalDB;

CREATE TABLE Benutzer (
    idBenutzer INT NOT NULL AUTO_INCREMENT,
    benutzername NVARCHAR(20) NOT NULL,
    passwort NVARCHAR(20) NOT NULL,
    email NVARCHAR(60) NOT NULL,
    vorname NVARCHAR(20) NOT NULL,
    name NVARCHAR(20) NOT NULL,
    PRIMARY KEY (idBenutzer)
);

CREATE TABLE Benutzer_Abonniert_Benutzer (
    idBenutzer_Abonniert_Benutzer INT NOT NULL AUTO_INCREMENT,
    benutzerId INT NOT NULL,
    abonnierterBenutzerId INT NOT NULL,
    PRIMARY KEY (idBenutzer_Abonniert_Benutzer),
    FOREIGN KEY (benutzerId)
        REFERENCES Benutzer (idBenutzer)
        ON DELETE CASCADE,
    FOREIGN KEY (abonnierterBenutzerId)
        REFERENCES Benutzer (idBenutzer)
        ON DELETE CASCADE
);

CREATE TABLE Eintrag (
    idEintrag INT NOT NULL AUTO_INCREMENT,
    datum DATETIME NOT NULL,
    benutzerId INT NOT NULL,
    eintrag TEXT NOT NULL,
    PRIMARY KEY (idEintrag),
    FOREIGN KEY (benutzerId)
        REFERENCES Benutzer (idBenutzer)
        ON DELETE CASCADE
);

CREATE TABLE Kommentar (
    idKommentar INT NOT NULL AUTO_INCREMENT,
    datum DATETIME,
    eintragId INT NOT NULL,
    benutzerId INT NOT NULL,
    kommentar TEXT NOT NULL,
    PRIMARY KEY (idKommentar),
    FOREIGN KEY (eintragId)
        REFERENCES Eintrag (idEintrag)
        ON DELETE CASCADE,
    FOREIGN KEY (benutzerId)
        REFERENCES Benutzer (idBenutzer)
        ON DELETE CASCADE
);