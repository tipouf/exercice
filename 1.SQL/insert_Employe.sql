USE GESTION_EMPLOYE;
GO

insert into Service Values ('RESHU', 'Ressources humaines'); --exemple d"insertion de valeurs dans une table
insert into Service (CodeService, libelle) Values ('ACHAT', 'achat'); --insertion de valeur dans une table en choisissant les colonnes!

--obligation de fournour une valeur � chaque champ list�
insert into Employes (Nom, Prenom,DateNaissance, DateEmbauche, Salaire, CodeService ,CodeEmp)
			values ('Emp 1', 'pr�nom Emp 1','12/05/1901', '12/05/1999', DEFAULT, 'RESHU', 6); -- possibilit� d 'assigner la valeur par default au lieu de la remplir

-- Si une colonne non null ne fait parti de la liste des colonnes a valoris�. c'est la valeur par default qui sera automatiquement appliqu�!
insert into Employes (Nom, Prenom, Salaire, CodeService ,CodeEmp)
			values ('Emp 1', 'pr�nom Emp 1', DEFAULT, 'RESHU', 7); -- possibilit� d 'assigner la valeur par default au lieu de la remplir
			--ici , la date d'embauche n'etait pas pr�cis� donc elle a pris la valeur par defaut

--Si l insertion n'est pas coherente avec les contraintes de bases de donn�e, celle ci sera refus�!
insert into Employes (Nom, Prenom, DateEmbauche,Salaire,CodeService)
	values ('Emp 4', NULL, '10/11/2016' , -10, 'XXXXX'); --la colonne Pr�nom n'accepte pas les valeurs null

insert into Employes (Nom, Prenom, DateEmbauche,Salaire,CodeService,CodeEmp)
	values (UPPER ('Emp 7'), 'prenom EMP 7', GETDATE() , DEFAULT, 'XXXXX', 9); --la colonne Pr�nom n'accepte pas les valeurs null


	--pour voir les lignes ins�r�, faire clic droit sur la table et selectionner "selectionner les 1000 premi�res lignes


--TESTS INSTRUCTIONS UPDATE

update Employes SET DateEmbauche = GETDATE(), DateNaissance = GETDATE(); --Permet d'updater toute la colonne DateEmbauche et DateNaissance

update Employes SET DateEmbauche = NULL, DateNaissance = GETDATE() WHERE DateEmbauche; --Permet d'updater toute la colonne DateEmbauche et DateNaissance with condition

update Employes set Nom = UPPER(Nom);
update Employes set Salaire = Salaire * 1.1 where codeService = 'XXXXX'; --augmentation du salaire du service xxxxx
update Employes set Nom = UPPER (Nom),
					Prenom = ISNULL(Prenom, '<non renseign�>'),
					DateEmbauche = DEFAULT,
					DateNaissance = NULL;

--DELETE
delete from Employes; --supprime toutes les lignes de la table Employes
delete from Service;  --ne sera fonctionnera pas si il y a une contrainte de cl� etrangere

DELETE FROM Employes Where Nom = 'Emp 1'; --efface tous les employ�s ayant le pr�nom 'Emp 1'

delete from Employes
	where Nom like '%emp%' and CodeService = 'XXXXX'; -- supprime les employ� don le nom contient emp et ayant le codeService XXXXXs

	--ATTENTION !! Si on supprime un employ� ayant une int�grit� r�f�rentielle, (ON DELETE CASCADE par exemple), les cong�s seront aussi supprim�.

--TP
delete from Employes where DateNaissance != null and DateNaissance <= DATEADD(year,-65,GETDATE()); -- ma facon de faire pour supprimer des employ�s de + de 65 ans
delete from Employes where DateNaissance != null and DATEDIFF(year, dateNaissance, getdate()) >=65; --reponse du cours


--INSTRUCTION DU DCL pour mettre de securiser les transactions

--BEGIN

--begin transaction miseajour;
--save transaction pointname;
--commit transaction;
--rollback transaction nomdelatransaction;
--rollback transaction | pointname;

----------------------------------------------
--set transaction isolation level option    -- option dispo READ COMMITTED READ UNCOMMITED REPEATABLE READ SERIALIZABLE -- a mettre avant le begin.
--begin transaction

--exemple:

--definir la nature du verrou pous� par la transaction
SET TRANSACTION ISOLATION LEVEL READ COMMITTED; ---(par defaut) option facultative car c est celle utilis�e par d�faut
--la transaction n'est pas visible par les autres utilisateurs
--D�marrer une transaction
BEGIN TRAN [MAJ_DATA];
	insert into [Service] (CodeService,Libelle) values ('SERV3','Service 3');
	insert into [Service] (CodeService,Libelle) values ('SERV4','Service 4');
	--placer un point de controle dans la transaction
	SAVE TRAN [BEFORE_DELETE]; --sauve un point de controle et va differencier ce qui se passe avant et apres le marqueur
	delete from Employes where nom like '%emp%';
	--Si on veut invalider la totalit� de la transaction
	ROLLBACK TRAN [MAJ_DATA];
	-- Si on veut invalider la transaction apres BEFORE DELETE
	ROLLBACK TRAN  [BEFORE_DELETE]; -- le serveur a annuler le delete de tous les employ� positionn� apres le point
	--sinon
	COMMIT TRAN [MAJ_DATA]; -- on valide tout definitivement et les autres utilisateur peuvent voir a present des donn�es mise a jour. il n 'y a plus de verrou




	--juste pour tester la transaction en cours!
	select * from Service; --les autres utilisateurs ne voit pas encore les services
	select * from Employes;