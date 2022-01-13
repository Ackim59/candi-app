DROP DATABASE IF EXISTS Candidature_simplon;

CREATE DATABASE Candidature_simplon;

CREATE TABLE User (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    telephone_number VARCHAR(50),
    e_mail VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    is_admin BOOL NOT NULL
);

CREATE TABLE Entreprise (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    place VARCHAR(50) NOT NULL
);

CREATE TABLE Candidature (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    enterprise_id INTEGER NULL,
    contact VARCHAR(100)
);

INSERT INTO User (last_name, first_name, telephone_number, e_mail, password, is_admin) VALUES 
("Bourez", "Rudy", "06.06.06.06.06","mail@mail.com", "******", false),
("Hamour", "Yanis", "06.06.06.06.06","mail@mail.com", "******", false),
("Durand", "Brune", "","mail@mail.com", "******", true),
("Abgrall", "Floriant", "06.06.06.06.06","mail@mail.com", "******", false),
("Belarbi", "Safia", "","mail@mail.com", "******", true),
("Adeoye", "Gidéon", "06.06.06.06.06","mail@mail.com", "******", false),
("Druesne", "Steven", "06.06.06.06.06","mail@mail.com", "******", false),
("Haddou", "Ayoub", "06.06.06.06.06","mail@mail.com", "******", false);

INSERT INTO Entreprise (name, place) VALUES
("Urluberlu", "Lille"),
("Taratata", "Lens"),
("Turlututu", "Seclin"),
("Rondoudou", "Marcq-en-Bareuil");

INSERT INTO Candidature (user_id, enterprise_id, contact) VALUES
(0,0,"John Doe"),
(1,1,"Robert"),
(5,2,""),
(1,1,"Patricia"),
(7,2,"Brigitte"),
(3,3,""),
(1,0,"Patrick"),
(2,3,"Jules");