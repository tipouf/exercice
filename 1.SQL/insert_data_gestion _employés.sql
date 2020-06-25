USE GESTION_EMPLOYE;
GO

BEGIN TRAN [tran_bouchon]

delete from employes
delete from [Service]

insert into [Service] values ('RESHU','Ressources humaines')

-- 1 employé (un peu de procédural, déclaration de variables)
DECLARE @myid int

--désactiver la prise en charge de l'identity
--set IDENTITY_INSERT EMPLOYES ON

--on numerote donc nous même les employes
SET @myid = -1

insert into employes (codeemp,nom,prenom,dateEmbauche,salaire,codeService,codeChef)
	values (@myid,'Bosapin','Edmond','25/01/2002',3500.20,'RESHU',null)
-- ses congés
insert into conges values (@myid,2003,default)

-- son détail pour l'année
insert into conges_mens values (@myid,2003,1,5)
insert into conges_mens values (@myid,2003,5,5)
insert into conges_mens values (@myid,2003,7,15)
insert into conges_mens values (@myid,2003,12,5)

--Completer le jeu d'essai
insert into [Service] values ('DIRGE','Direction Générale')
insert into [Service] values ('INFOR','Informatique')
insert into [Service] values ('COMPT','Comptabilité')
insert into [Service] values ('ACHAT','Achat')
insert into [Service] values ('TECHN','Technique')

--Bosapin (suite)
insert into conges values (@myid,2004,default)
insert into conges_mens values (@myid,2004,1,5)
insert into conges_mens values (@myid,2004,7,10)
insert into conges_mens values (@myid,2004,8,10)
insert into conges_mens values (@myid,2004,12,2)

insert into conges values (@myid,2005,default)
insert into conges_mens values (@myid,2005,1,2)
insert into conges_mens values (@myid,2005,3,2)
insert into conges_mens values (@myid,2005,7,3)
insert into conges_mens values (@myid,2005,8,20)
insert into conges_mens values (@myid,2005,12,3)

insert into conges values (@myid,2006,30)
insert into conges_mens values (@myid,2006,1,2)
insert into conges_mens values (@myid,2006,4,5)
insert into conges_mens values (@myid,2006,6,10)

SET @myid = -2
insert into employes (codeemp,nom,prenom,dateEmbauche,salaire,codeService,codeChef)
	values (@myid,'Tourne','Sylvan','12/03/2005',2000,'RESHU',null);
insert into conges values (@myid,2006,20)
insert into conges_mens values (@myid,2006,4,1)
insert into conges_mens values (@myid,2006,8,10)

SET @myid = -3
insert into employes (codeemp,nom,prenom,dateEmbauche,salaire,codeService,codeChef)
	values (@myid,'Malalaniche','Mélanie','01/01/2002',5000,'DIRGE',null);
insert into conges values (@myid,2003,30)
insert into conges_mens values (@myid,2003,2,10)
insert into conges_mens values (@myid,2003,8,20)
insert into conges values (@myid,2004,30)
insert into conges_mens values (@myid,2004,1,5)
insert into conges_mens values (@myid,2004,8,20)
insert into conges_mens values (@myid,2004,12,5)
insert into conges values (@myid,2005,30)
insert into conges_mens values (@myid,2005,6,30)
insert into conges values (@myid,2006,30)
insert into conges_mens values (@myid,2006,2,10)
insert into conges_mens values (@myid,2006,9,10)

SET @myid = -4
insert into employes (codeemp,nom,prenom,dateEmbauche,salaire,codeService,codeChef)
	values (@myid,'Cover','Harry','01/09/2005',2500,'INFOR',null);
insert into conges values (@myid,2006,10)
insert into conges_mens values (@myid,2006,8,5)

SET @myid = -5
insert into employes (codeemp,nom,prenom,dateEmbauche,salaire,codeService,codeChef)
	values (@myid,'Touille','Sacha','01/10/2005',2000,'INFOR',null);
insert into conges values (@myid,2006,8)
insert into conges_mens values (@myid,2006,8,5)

SET @myid = -6
insert into employes (codeemp,nom,prenom,dateEmbauche,salaire,codeService,codeChef)
	values (@myid,'Huttofond','Sacha','01/10/2015',1900.20,'INFOR',null);
insert into conges values (@myid,2006,8)
insert into conges_mens values (@myid,2006,8,5)


update employes set Codechef = (select CodeEmp from employes where upper(nom) like 'Malalaniche')
	where upper(nom) in ('Cover','Bosapin')
update employes set Codechef = (select CodeEmp from employes where upper(nom) like 'Cover')
	where upper(nom) in ('Touille','Huttofond')
update employes set Codechef = (select CodeEmp from employes where upper(nom) like 'Bosapin')
	where upper(nom) in ('Tourne')

--activer la prise en charge de l'identity
set IDENTITY_INSERT EMPLOYES OFF

PRINT('N''oubliez pas de fermer la transaction ouverte !');
commit tran [tran_bouchon];
