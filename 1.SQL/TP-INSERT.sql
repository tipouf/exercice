USE LOCATIONS;
GO

insert into clients(noCli,nom,prenom,adresse,cpo,ville)	
	VALUES(1,Albert,Anatole,Rue des accacias,61000,Amiens),
	(2,Bernard,Barnabé,Rue du bar,01000,Bourg en Bresse),
	(3,Dupond,Camille,Rue Crébillon,44000,Nantes),
	(4,Desmoulin,Daniel,Rue descendante,21000,Dijon),
	(5,Ernest,Etienne,Rue de l’échaffaud,42000,Saint Étienne),
	(6,Ferdinand,François,Rue de la convention,44100,Nantes),
	(9,Dupond,Jean,Rue des mimosas,75018,Paris,),

insert into fiches(noFic,noCli,dateCrea,datePaye,etat)
	VALUES
	(1001,14,DDJ –15*,DDJ – 13,SO),
	(1002,4,DDJ – 13,EC),
	(1003,1,DDJ – 12,DDJ – 10,SO),
	(1004,6,DDJ – 11,EC),
	(1005,3,DDJ – 10,EC),
	(1006,9,DDJ – 10,RE),
	(1007,1,DDJ – 3,EC),
	(1008,2,DDJ,EC);

insert into fiches(noFic,noLig,refart,depart,retour)
	VALUES	
	(1001,1,F05,DDJ – 15,DDJ – 13),
	(1001,2,F50,DDJ – 15,DDJ – 14),
	(1001,3,F60,DDJ – 13,DDJ – 13**),
	(1002,1,A03,DDJ – 13,DDJ – 9),
	(1002,2,A04,DDJ – 12,DDJ – 7),
	(1002,3,S03,DDJ – 8);
	(1003,1,F50,DDJ – 12,DDJ – 10),
	(1003,2,F05,DDJ – 12,DDJ – 10),
	(1004,1,P01,DDJ – 6);
	(1005,1,F05,DDJ – 9,DDJ – 5),
	(1005,2,F10,DDJ – 4),
	(1006,1,S01,DDJ – 10,DDJ – 9),
	(1006,2,S02,DDJ – 10,DDJ – 9),
	(1006,3,S03,DDJ – 10,DDJ – 9),
	(1007,1,F50,DDJ – 3,DDJ – 2),
	(1007,3,F60,DDJ – 1),
	(1007,2,F05,DDJ – 3),
	(1007,4,S02,DDJ),
	(1008,1,S01,DDJ);

insert into articles(Refart,Designation,codeGam,codeCate)
	VALUES
	(F01,Fischer Cruiser,EG,FOA)
	(F02,Fischer Cruiser,EG,FOA),
	(F03,Fischer Cruiser,EG,FOA),
	(F04,Fischer Cruiser,EG,FOA),
	(F05,Fischer Cruiser,EG,FOA),
	(F10,Fischer Sporty Crown,MG,FOA),
	(F20,Fischer RCS Classic GOLD,PR,FOA),
	(F21,Fischer RCS Classic GOLD,PR,FOA),
	(F22,Fischer RCS Classic GOLD,PR,FOA),
	(F23,Fischer RCS Classic GOLD,PR,FOA),
	(F50,Fischer SOSSkating VASA,HG,FOP),
	(F60,Fischer RCS CARBOLITE Skating,PR,FOP),
	(F61,Fischer RCS CARBOLITE Skating,PR,FOP),
	(F62,Fischer RCS CARBOLITE Skating,PR,FOP),
	(F63,Fischer RCS CARBOLITE Skating,PR,FOP),
	(F64,Fischer RCS CARBOLITE Skating,PR,FOP),
	(P01,Décathlon Allegre junior 150,EG,PA),
	(P10,Fischer mini ski patinette,MG,PA),
	(P11,Fischer mini ski patinette,MG,PA),
	(S01,Décathlon Apparition,EG,SURF),
	(S02,Décathlon Apparition,EG,SURF),
	(S03,Décathlon Apparition,EG,SURF),
	(A01,Salomon 24X+Z12,EG,SA),
	(A02,Salomon 24X+Z12,EG,SA),
	(A03,Salomon 24X+Z12,EG,SA),
	(A04,Salomon 24X+Z12,EG,SA),
	(A05,Salomon 24X+Z12,EG,SA),
	(A10,Salomon Pro Link Equipe 4S,PR,SA),
	(A11,Salomon Pro Link Equipe 4S,PR,SA),
	(A21,Salomon 3V RACE JR+L10,PR,SA)














