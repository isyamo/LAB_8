

USE universite_test;
SHOW TABLES;

SELECT COUNT(*) as Nombre_Etudiants FROM ETUDIANT;
SELECT COUNT(*) as Total_Tables FROM information_schema.tables 
WHERE table_schema = 'universite_test';

ALTER TABLE INSCRIPTION 
ADD INDEX idx_date_inscription(date_inscription);

ALTER TABLE INSCRIPTION DROP INDEX idx_date_inscription;

SHOW INDEX FROM INSCRIPTION;
DESCRIBE INSCRIPTION;

EXPLAIN
SELECT e.nom, COUNT(i.etudiant_id) as inscriptions
FROM ETUDIANT e
JOIN INSCRIPTION i ON i.etudiant_id = e.id
GROUP BY e.id;

-- ÉTAPE 8: OPTIMIZATION
ANALYZE TABLE INSCRIPTION;
OPTIMIZE TABLE INSCRIPTION;