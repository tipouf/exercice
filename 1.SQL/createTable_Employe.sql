-- INDIQUE LA BASE SUR LAQUELLE S EXECUTE LE SCRIPT
USE GESTION_EMPLOYE;
GO

-- EXEMPLES DU COURS
CREATE TABLE Employes(
	CodeEmp INT not null CONSTRAINT PK_Employes PRIMARY KEY, -- de type entier, une primary key ne peut etre null
	Nom VARCHAR(20) not null, --chaine de caracteres pouvant varier de 1 à 20 caractères.
	Prenom CHAR (20) not null, -- chaine de caracteres de longueur fixé (20 octet reserve) peut importe la longueur du prénom
	DateNaissance DATE null, -- le champ peut etre null
	DateEmbauche DATE not null CONSTRAINT DF_Employes_DateEmbauche DEFAULT getdate() ,
	DateModif TIMESTAMP null, -- c'est le serveur de bdd qui vient alimenter la colonne
	Salaire DECIMAL (8,2) not null CONSTRAINT DF_Employes_Salaire DEFAULT 0
								   CONSTRAINT CK_Employes_Salaire CHECK (Salaire >= 0), 
	-- le salaire va contenir 8 position numerique dont 2 sont réservé pour la partie décimal
	-- contrainte de validation  => verifie si la valeur du salaire que l'on s'apprete a inserer est bien superieur ou egale a 0
	CodeService CHAR(5) not null,
	CodeChef INT null,
	-- ou CONSTRAINT PK_Employes PRIMARY KEY(CodeEmp) cela peut etre aussi plusieurs colonnes
	--ou CodeEmp INT not null IDENTITY(1,1), =>le serveur de bdd va generer une valeur qu il va associer a la clé primaire de cet enregistrement (valeur initiale,pas d'incrementation)
	-- si on ne precise rien derriere IDENTITY ce sont les valeurs 1,1 qui seront quand meme mis en place.
	CONSTRAINT CK_Employes_VerifDate CHECK (DateNaissance is null or DateEmbauche >= DateNaissance) 
	-- si la contrainte utilise plusieur colonne alors la contrainte ne pourra se faire qu'au niveau de la table
	-- n'accepte un nouvel employé que si la date est nulle ou la date d embauche après date de naissance 
	);

CREATE TABLE Service(
	CodeService CHAR(5) not null CONSTRAINT PK_Service PRIMARY KEY,
	Libelle VARCHAR(30) not null CONSTRAINT Un_Service_Libelle UNIQUE, -- Clé secondaire peut etre sur une colonne ou plusieurs.
	-- CONSTRAINT Un_Service_Libelle UNIQUE (Libelle,...) si plusieurs colonne pour clé secondaire
	);

CREATE TABLE Conges(
	CodeEmp INT not null CONSTRAINT PK_Conges PRIMARY KEY,
	Annee NUMERIC(4,0) not null,
	NbJoursAcquis NUMERIC(2,0) null CONSTRAINT DF_Conges_NbJoursAcquis DEFAULT 30
	);

CREATE TABLE Conges_Mens(
	CodeEmp INT not null CONSTRAINT PK_Conges_Mens PRIMARY KEY,
	Annee NUMERIC(4,0) not null,
	Mois NUMERIC(2,0)not null CONSTRAINT DF_Conges_Mens_Mois CHECK (Mois <=12),
	NbJoursPris NUMERIC(2,0) null CONSTRAINT DF_Conges_Mens_NbJoursPris DEFAULT 0 -- DF_TABLENAME_COLONNENAME
	);