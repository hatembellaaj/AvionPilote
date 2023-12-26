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

