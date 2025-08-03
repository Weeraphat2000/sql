-- insert data
INSERT INTO CEUD (id, name, description) VALUES
(1, 'CEUD Example 1', 'This is an example entry for CEUD.'),
(2, 'CEUD Example 2', 'This is another example entry for CEUD.'),
(3, 'CEUD Example 3', 'This is yet another example entry for CEUD.');

-- select data
SELECT * FROM CEUD;

-- update data
UPDATE CEUD
SET name = 'Updated CEUD Example 1', description = 'This entry has been updated.'
WHERE id = 1;

-- delete data
DELETE FROM CEUD
WHERE id = 2;