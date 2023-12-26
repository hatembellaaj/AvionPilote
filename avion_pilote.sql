create table PILOTE(
    numpilote Text PRIMARY KEY, 
    nom Text NOT NULL, 
    prenom TEXT
);

create table AVION(
    numavion Text PRIMARY KEY, 
    type Text, 
    cap Integer
);

create table VOL(
    numvol TEXT PRIMARY KEY, 
    depart TEXT, 
    arrivee TEXT, 
    numav TEXT NOT NULL, 
    numpil TEXT NOT NULL REFERENCES PILOTE, 
    jdep date, 
    hdep time, 
    jarr date, 
    harr time,
	FOREIGN KEY (numav) REFERENCES AVION
);

INSERT INTO AVION 
values 
	("A0001", "Boeing 747", 420),
	("A0002", "Airbus 320", 300),
	("A0003", "Airbus 300", 280),
	("A0004", "Boeing 737", 250),
	("A0005", "DC 10", 120),
	("A0006", "Boeing 747", 410)

INSERT INTO PILOTE 
values 
	("P0001", "Dupuis", "Antoine"),
	("P0002", "Simon", "Georges"),
	("P0003", "François", "Luc"),
	("P0004", "André", "Georges"),
	("P0005", "Arthur", "Luis"),
	("P0006", "Mathieu", "François")

INSERT INTO VOL
VALUES
	("V0001", "Paris", "San Francisco", "A0001", "P0002", "15/05/2004", "10:00", "16/05/2004", "09:30"),
	("V0002", "Londres", "Moscou", "A0003", "P0001", "15/05/2004", "10:30", "15/05/2004", "17:00"),
	("V0003", "Berlin", "Madrid", "A0002", "P0003", "15/05/2004", "11:15", "15/05/2004", "18:00"),
	("V0004", "Londres", "Madrid", "A0004", "P0006", "15/05/2004", "06:20", "16/05/2004", "09:30"),
	("V0005", "Bruxelles", "Rome", "A0006", "P0005", "16/05/2004", "10:00", "16/05/2004", "15:10"),
	("V0006", "Berlin", "Amestrdam", "A0005", "P0001", "16/05/2004", "14:30", "16/05/2004", "17:00"),
	("V0007", "Paris", "Bruxelles", "A0001", "P0002", "16/05/2004", "18:00", "16/05/2004", "20:00"),
	("V0008", " New York", "Paris", "A0001", "P0003", "17/05/2004", "03:00", "17/05/2004", "21:30"),
	("V0009", " Paris", "Bruxelles", "A0004", "P0006", "17/05/2004", "06:00", "17/05/2004", "07:00"),
	("V0010", " Berlin", "Madrid", "A0002", "P0004", "17/05/2004", "08:00", "17/05/2004", "11:00"),
	("V0011", " Londres", "Bruxelles", "A0004", "P0006", "17/05/2004", "08:00", "17/05/2004", "10:00"),
	("V0012", " Londres", "Paris", "A0001", "P0004", "17/05/2004", "09:00", "17/05/2004", "10:30")

SELECT nom, prenom 
from pilote 

SELECT *
from pilote 
where prenom = "Georges"