
USE GESTION_EMPLOYE;
GO


--modifier une colonne
ALTER TABLE Employes
	ALTER COLUMN Prenom VARCHAR(50) not null; --La colonne accepte a present 50 caractères mac et ne peux etre null.
	--Attention cette instruction ne pourrait pas etre realisée si il y avait deja des champs a null!

-- supprimer une colonne
ALTER TABLE Employes
	DROP COLUMN DateModif; --pour supprimer une colonne

--ajouter une contrainte sans vérification des données déjà présente en base
ALTER TABLE Employes
	WITH NOCHECK ADD CONSTRAINT  CK_Employes_Salaire_2 CHECK (Salaire <= 9999);
	--si on enleve WITH NOCHECK, la modif ne se fera que si l'ensemble des salaires est <= à 9999

--desactiver une contrainte
ALTER TABLE Employes
	NOCHECK CONSTRAINT CK_Employes_Salaire_2; -- desactive la contrainte ajoutée précédemment
	-- CHECK CONSTRAINT... Permet de la reactiver


--supprimer une contrainte
ALTER TABLE Employes
	Drop CONSTRAINT CK_Employes_Salaire_2; --contrainte précédente éffacée



-- INTEGRITE REFERENTIELLE
ALTER TABLE Employes WITH CHECK ADD
	CONSTRAINT FK_Employes_CodeService FOREIGN KEY (CodeService)
		REFERENCES Service(CodeService),
		-- lie la clé etrangere code service de la table Employes a la table Service contenant la clé primaire CodeService.
		-- une fois lié, il sera impossible de supprimer de la table service un enregistrement dont le code est utilisé ou associé un employé 
	CONSTRAINT FK_Employes_CodeChef FOREIGN KEY (CodeChef)
		REFERENCES Employes(CodeEmp);

-- NO ACTION (par default) impossible de supprimer un service dont le code est associé à un employé
-- CASCADE set null ou set default. cette option se positionne derrire la definition "REFERENCES"
ALTER TABLE Conges WITH CHECK ADD
	CONSTRAINT FK_Conges_CodeEmp FOREIGN_KEY (CodeEmp)
		REFERENCES Employes(CodEmp) ON DELETE CASCADE; --lorsque nous supprimons un employé, automatiquement tous les enregistrements associés seront supprimés
									--ON DELETE SET NULL: lorsque l'on supprime un employé, les informations dans la table congé ne sont pas supprimé et le codEmp est mis a nulle
									--ON DELETE SET DEFAULT: met le codEmp a la valeur par defaut de la table congé (si une valeur par defaut a ete defini

									--Possible aussi avec ON UPDATE
--TP
ALTER TABLE Conges WITH CHECK ADD
	CONSTRAINT FK_Conges_Employes FOREIGN KEY (CodeEmp)
		REFERENCES Employes(CodeEmp) ON DELETE CASCADE;
ALTER TABLE Conges_Men WITH CHECK ADD
	CONSTRAINT FK_Conges_Mens FOREIGN KEY (CodeEmp,Annee)
		REFERENCES Conges(CodeEmp,Annee) ON DELETE CASCADE;

--DROP TABLE Employes; 
--DROP TABLE [Services]; -- impossible de supprimer la table detail Employes avant la table maitres Services!
-- Pour supprimer une table de notre serveur de BDD
DROP TABLE [Services], Employes; --Attention, on ne peux pas supprimer untable maitre si la table détail n'a pas été supprimé avant! Employé est une table maitre
									-- a cause de la regle d 'integrité référentielle effectuée précedemment
									-- La suppression physique de la table entraine la suppression de tous sont contenu! normal!

--	Si on veux supprimer sans contrainte!
Alter TABLE
	DROP CONSTRAINT;

	--puis supprimer les tables

--INDEX (automatiquement associé a la clé primaire)
-- c 'est bien de mettre des index sur les contraintes de clés étrangère et sur les collens de recherche et de tri

--Creer un index
CREATE NONCLUSTERED INDEX FK_Employes_Services
	ON Employes(CodeService ASC); -- creation d un index sur la clé etrangere CodeService de la tableEmploye
CREATE NONCLUSTERED INDEX FK_Employes_Employes
	ON Employes(CodeChef ASC); -- creation d un index sur la clé etrangere CodeChef dEmploye
CREATE NONCLUSTERED INDEX FK_Conges_Employes
	ON Conges(CodeEmp ASC); -- creation d un index sur la clé etrangere CodeEmp dans congés
CREATE NONCLUSTERED INDEX FK_Conges_mens_Conges
	ON Conges_Mens(CodeEmp ASC, Annee ASC); -- creation d un index sur la clé etrangere  de conges_Mens fait participé 2 colonnes
