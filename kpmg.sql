-- As I did not clean the 'newcust' table (new customers) in Excel I opened the first 5 rows of this table to analyze. 
--To match the fields with the ones from the 'custdemo' and 'custadress' tables, I modified the 'gender' and 'state' columns.

SELECT TOP 5*
FROM newcust;

SELECT TOP 5*
FROM custdemo;

SELECT TOP 5*
FROM custadress;

UPDATE newcust
SET gender = REPLACE(gender, 'Female', 'F'), gender = REPLACE (gender, 'Male', 'M')
WHERE gender LIKE 'Fem%';
	
UPDATE newcust
SET gender = REPLACE(gender, 'Male', 'M')
WHERE gender LIKE 'Ma%';

UPDATE newcust
SET state = REPLACE(state, 'QLD', 'Queensland')
WHERE state LIKE 'QLD';

UPDATE newcust
SET state = REPLACE(state, 'NSW', 'New South Wales')
WHERE state LIKE 'NSW';

UPDATE newcust
SET state = REPLACE(state, 'VIC', 'Victoria')
WHERE state LIKE 'VIC';

-- Checking the changes
SELECT DISTINCT gender
FROM newcust

SELECT DISTINCT state
FROM newcust
	
--I wanted to know from wich state most of the old and new customers come from
SELECT state, COUNT (*) as pop 
FROM custadress
GROUP BY state
ORDER BY pop desc;

SELECT state, COUNT (*) as pop 
FROM newcust
GROUP BY state
ORDER BY pop desc





