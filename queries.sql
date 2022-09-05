-- /// Create an animal Table //// 

Create TABLE Animals(
id INTEGER, 
species TEXT,
name TEXT,
age INTEGER,
fed INTEGER,
favorite_food TEXT,
PRIMARY KEY (id)
);


-- /// populate the table with animals i like ///

INSERT INTO Animals(species, name, age, fed, favorite_food) VALUES ("Cat", "Nera",1, 1, "milk")
INSERT INTO Animals(species, name, age, fed, favorite_food) VALUES ("Duck", "Rexa",2, 1, "grass")

-- /// Update some Properties of the animals ///

UPDATE Animals 
SET age = 2 
WHERE id=1



UPDATE Animals 
SET favorite_food = "chicken" 
WHERE name is "Nera"


-- // A animal it's been transferred to another Zoo //// remove 

DELETE FROM Animals WHERE id = 2 


-- /// remove column favorite_food ///

ALTER TABLE Animals DROP COLUMN favorite_food


-- Add a origin and a city for the animals 

ALTER TABLE Animals ADD COLUMN origin TEXT
ALTER TABLE Animals ADD COLUMN city 
 

UPDATE Animals SET origin = "Albania" WHERE id IN (1,2);
UPDATE Animals SET city = "Lushnje " WHERE id IN (1,2);

--  Select


SELECT * FROM  Animals
