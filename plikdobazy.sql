INSERT INTO `addon_account` (name, label, shared) VALUES
    ('society_szwalnia', 'Szwalnia', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
    ('society_szwalnia', 'Szwalnia', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
    ('society_szwalnia', 'Szwalnia', 1)
;

INSERT INTO `jobs` (name, label) VALUES
    ('szwalnia', 'Szwalnia')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('szwalnia',0,'recruit','Rekrut',20,'{}','{}'),
	('szwalnia',1,'pracownik','Pracownik',40,'{}','{}'),
	('szwalnia',2,'spracownik','Doświadczony Pracownik',60,'{}','{}'),
	('szwalnia',3,'kierownik','Kierownik',85,'{}','{}'),
  	('szwalnia',4,'boss','Zastępca Szefa',85,'{}','{}'),
	('szwalnia',5,'boss','Szef Zakładu',100,'{}','{}')
;