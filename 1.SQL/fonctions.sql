--instruction DML

--INSERT UPDATE DELETE
--TRANSACT SQL = > Langage procédural associé à la base de données Microsoft SQL Server

select CONVERT (int,'1002'); --converti une chaine de caractere en entier 
select DATEDIFF(year,'01/02/1998',getdate()); --retourne 22 ans car on a demandé la différence sur year!
select CONVERT (char,getdate(),103); -- format de date RO chapitre3 -1.3.9
--103 correspond a la date au format anglais/francais

--TP
select CONVERT(numeric(4,2),Round (100.0/3,2),2);
select DATEADD(day,30,GETDATE()); --Ajoute 30 jours a la date du jour!
select SUBSTRING('Server',CHARINDEX('Server','SQL Server - SQL et Transact-SQL',0),);
select SUBSTRING('SQL Server - SQL et Transact-SQL',CHARINDEX('Server','SQL Server - SQL et Transact-SQL'),LEN('Server'));
select LEN('Server'); --donne la longueur du mot 'Serveur'



