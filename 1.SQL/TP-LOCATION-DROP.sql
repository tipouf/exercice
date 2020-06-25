/*suppression de l'intégrité référentielle*/
USE LOCATION;
GO

ALTER TABLE fiches DROP 
	CONSTRAINT fk_fiches_clients;

ALTER TABLE grilleTarifs DROP 
	CONSTRAINT fk_grilleTarifs_gammes,
	CONSTRAINT fk_grilleTarifs_categories,
	CONSTRAINT fk_grilleTarifs_tarifs;

ALTER TABLE articles DROP 
	CONSTRAINT fk_articles_grilleTarifs;

ALTER TABLE lignesFic DROP 
	CONSTRAINT fk_lignesFic_fiches,
	CONSTRAINT fk_lignesFic_articles;


/*suppression des tables*/
DROP TABLE lignesFic, fiches, clients, articles, grilleTarifs, tarifs, gammes, categories;
GO


/*suppression de la base de données*/
/*
USE [master]
GO

--suppression des connexions encore active
ALTER DATABASE [Location] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE [Location]
GO
*/
