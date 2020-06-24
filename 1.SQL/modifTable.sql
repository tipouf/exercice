
USE GESTION_EMPLOYE;
GO


--modifier une colonne
ALTER TABLE Employes
	ALTER COLUMN Prenom VARCHAR(50) not null; --La colonne accepte a present 50 caract�res mac et ne peux etre null.
	--Attention cette instruction ne pourrait pas etre realis�e si il y avait deja des champs a null!

-- supprimer une colonne
ALTER TABLE Employes
	DROP COLUMN DateModif; --pour supprimer une colonne

--ajouter une contrainte sans v�rification des donn�es d�j� pr�sente en base
ALTER TABLE Employes
	WITH NOCHECK ADD CONSTRAINT  CK_Employes_Salaire_2 CHECK (Salaire <= 9999);
	--si on enleve WITH NOCHECK, la modif ne se fera que si l'ensemble des salaires est <= � 9999

--desactiver une contrainte
ALTER TABLE Employes
	NOCHECK CONSTRAINT CK_Employes_Salaire_2; -- desactive la contrainte ajout�e pr�c�demment
	-- CHECK CONSTRAINT... Permet de la reactiver


--supprimer une contrainte
ALTER TABLE Employes
	Drop CONSTRAINT CK_Employes_Salaire_2; --contrainte pr�c�dente �ffac�e



-- INTEGRITE REFERENTIELLE
ALTER TABLE Employes WITH CHECK ADD
	CONSTRAINT FK_Employes_CodeService FOREIGN KEY (CodeService)
		REFERENCES Service(CodeService),
		-- lie la cl� etrangere code service de la table Employes a la table Service contenant la cl� primaire CodeService.
		-- une fois li�, il sera impossible de supprimer de la table service un enregistrement dont le code est utilis� ou associ� un employ� 
	CONSTRAINT FK_Employes_CodeChef FOREIGN KEY (CodeChef)
		REFERENCES Employes(CodeEmp);

-- NO ACTION (par default) impossible de supprimer un service dont le code est associ� � un employ�
-- CASCADE set null ou set default. cette option se positionne derrire la definition "REFERENCES"
ALTER TABLE Conges WITH CHECK ADD
	CONSTRAINT FK_Conges_CodeEmp FOREIGN_KEY (CodeEmp)
		REFERENCES Employes(CodEmp) ON DELETE CASCADE; --lorsque nous supprimons un employ�, automatiquement tous les enregistrements associ�s seront supprim�s
									--ON DELETE SET NULL: lorsque l'on supprime un employ�, les informations dans la table cong� ne sont pas supprim� et le codEmp est mis a nulle
									--ON DELETE SET DEFAULT: met le codEmp a la valeur par defaut de la table cong� (si une valeur par defaut a ete defini

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
DROP TABLE [Services], Employes; --Attention, on ne peux pas supprimer untable maitre si la table d�tail n'a pas �t� supprim� avant! Employ� est une table maitre
									-- a cause de la regle d 'integrit� r�f�rentielle effectu�e pr�cedemment
									-- La suppression physique de la table entraine la suppression de tous sont contenu! normal!

--	Si on veux supprimer sans contrainte!
Alter TABLE
	DROP CONSTRAINT;

	--puis supprimer les tables

--INDEX (automatiquement associ� a la cl� primaire)
-- c 'est bien de mettre des index sur les contraintes de cl�s �trang�re et sur les collens de recherche et de tri

--Creer un index
CREATE NONCLUSTERED INDEX FK_Employes_Services
	ON Employes(CodeService ASC); -- creation d un index sur la cl� etrangere CodeService de la tableEmploye
CREATE NONCLUSTERED INDEX FK_Employes_Employes
	ON Employes(CodeChef ASC); -- creation d un index sur la cl� etrangere CodeChef dEmploye
CREATE NONCLUSTERED INDEX FK_Conges_Employes
	ON Conges(CodeEmp ASC); -- creation d un index sur la cl� etrangere CodeEmp dans cong�s
CREATE NONCLUSTERED INDEX FK_Conges_mens_Conges
	ON Conges_Mens(CodeEmp ASC, Annee ASC); -- creation d un index sur la cl� etrangere  de conges_Mens fait particip� 2 colonnes
