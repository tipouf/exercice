USE LOCATION;
GO

/*création des index sur les clés étrangères*/
CREATE NONCLUSTERED INDEX fk_fiches_clients
	ON Fiches(noCli ASC);

CREATE NONCLUSTERED INDEX fk_grilleTarifs_gammes
	ON grilleTarifs(codeGam ASC);
CREATE NONCLUSTERED INDEX fk_grilleTarifs_categories
	ON grilleTarifs(codeCate ASC);
CREATE NONCLUSTERED INDEX fk_grilleTarifs_tarifs
	ON grilleTarifs(codeTarif ASC);

CREATE NONCLUSTERED INDEX fk_articles_grilleTarifs
	ON articles(codeGam ASC, codeCate ASC);

CREATE NONCLUSTERED INDEX fk_lignesFic_fiches
	ON lignesFic(noFic ASC);
CREATE NONCLUSTERED INDEX fk_lignesFic_articles
	ON lignesFic(refart ASC);
