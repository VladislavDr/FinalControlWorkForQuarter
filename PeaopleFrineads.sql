CREATE DATABASE IF NOT EXISTS peopleFriends;
USE peopleFriends;
DROP DATABASE IF EXISTS peopleFriends;
DROP TABLE IF EXISTS animal, pet, packAnimal, cat, dog, camel, horse, donkey, 
guineaPig, humster, mule, parrot, rabbit;

CREATE TABLE IF NOT EXISTS animal
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    typeOfAnimal CHAR(25)
);

INSERT INTO animal (typeOfAnimal) VALUES 
("Pet"),
("PackAnimal");
 
CREATE TABLE IF NOT EXISTS pet
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal CHAR(30),
    animal_id INT,
    FOREIGN KEY (animal_id)
	REFERENCES animal(id)
);

CREATE TABLE IF NOT EXISTS packAnimal
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal CHAR(30),
    animal_id INT,
    FOREIGN KEY (animal_id)
	REFERENCES animal(id)
); 

INSERT INTO pet (animal, animal_id) VALUES
("Cat", 1),
("Dog", 1),
("Humster", 1),
("Parrot", 1),
("Rabbit", 1),
("GuineaPig", 1);

INSERT INTO packAnimal (animal, animal_id) VALUES
("Camel", 2),
("Donkey", 2),
("Horse", 2),
("Mule", 2);

CREATE TABLE cat 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    pet_id INT,
    FOREIGN KEY (pet_id)
	REFERENCES pet(id)
);

CREATE TABLE dog 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    pet_id INT,
    FOREIGN KEY (pet_id)
	REFERENCES pet(id)
);

CREATE TABLE humster 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    pet_id INT,
    FOREIGN KEY (pet_id)
	REFERENCES pet(id)
);

CREATE TABLE parrot 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    pet_id INT,
    FOREIGN KEY (pet_id)
	REFERENCES pet(id)
);

CREATE TABLE rabbit 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    pet_id INT,
    FOREIGN KEY (pet_id)
	REFERENCES pet(id)
);

CREATE TABLE guineaPig 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    pet_id INT,
    FOREIGN KEY (pet_id)
	REFERENCES pet(id)
);

CREATE TABLE camel
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    packAnimal_id INT,
    FOREIGN KEY (packAnimal_id)
	REFERENCES packAnimal(id)
);

CREATE TABLE donkey 
(
	 id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    packAnimal_id INT,
    FOREIGN KEY (packAnimal_id)
	REFERENCES packAnimal(id)
);

CREATE TABLE horse 
(
	 id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    packAnimal_id INT,
    FOREIGN KEY (packAnimal_id)
	REFERENCES packAnimal(id)
);

CREATE TABLE mule 
(
	 id INT PRIMARY KEY AUTO_INCREMENT,
    animal_name CHAR(30),
    birthday DATE,
    commands TEXT,
    packAnimal_id INT,
    FOREIGN KEY (packAnimal_id)
	REFERENCES packAnimal(id)
);

INSERT INTO cat (animal_name, birthday, commands, pet_id) VALUES 
("Kuza", "2019-10-10", "Purr, Go to the loilet", 1);

INSERT INTO dog (animal_name, birthday, commands, pet_id) VALUES 
("Barbosa", "2019-10-10", "Voice, Serve, Take", 2);

INSERT INTO humster (animal_name, birthday, commands, pet_id) VALUES 
("Belyak", "2019-9-9", "Running in a wheelchair, Go to the loilet", 6);

INSERT INTO guineaPig (animal_name, birthday, commands, pet_id) VALUES 
("Pig", "2021-01-01", "Serve", 5);

INSERT INTO parrot (animal_name, birthday, commands, pet_id) VALUES 
("Petrusha", "2017-8-8", 
"Voice: Petrusha is a handsome boy, Voice: I want to eat,
Voice: Petrusha loves seeds", 4);

INSERT INTO rabbit (animal_name, birthday, commands, pet_id) VALUES 
("Banni", "2016-6-13", "Stand on your hind legs, Jump on your hands", 5);

INSERT INTO camel (animal_name, birthday, commands, packAnimal_id) VALUES 
("Lancelot", "2010-10-10", "Cargo transportation, Wallking, Running", 1);

INSERT INTO donkey (animal_name, birthday, commands, packAnimal_id) VALUES 
("Ishak", "2013-1-15", "Cargo transportation, Wallking, Running", 2);

INSERT INTO horse (animal_name, birthday, commands, packAnimal_id) VALUES 
("Kazbek", "2015-8-30", "Cargo transportation, Wallking, Running, 
Stand on your hind legs, Sit down", 3);

INSERT INTO mule (animal_name, birthday, commands, packAnimal_id) VALUES 
("Grambler", "2016-4-3", "Cargo transportation, Wallking, Running", 4);


TRUNCATE camel;

INSERT INTO horse (animal_name, birthday, commands, packAnimal_id)
SELECT animal_name, birthday, commands, packAnimal_id
FROM donkey;

DROP TABLE donkey;

RENAME TABLE horse TO horse_donkey;

CREATE TABLE young_animal (
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name CHAR(30),
    commands TEXT,
    birthday DATE,
    age TEXT
);

DELIMITER $$
CREATE FUNCTION age_animal (date_b DATE)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE res TEXT DEFAULT '';
	SET res = CONCAT(
            TIMESTAMPDIFF(YEAR, date_b, CURDATE()),
            ' years ',
            TIMESTAMPDIFF(MONTH, date_b, CURDATE()) % 12,
            ' month'
        );
	RETURN res;
END $$
DELIMITER ;

INSERT INTO young_animal (animal_name, commands, birthday, age)
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM cat
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM dog
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM humster
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM guineaPig
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM parrot
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM rabbit
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM mule
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT animal_name, commands, birthday, age_animal(birthday)
FROM horse_donkey
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM cat 
WHERE TIMESTAMPDIFF(YEAR, cat.birthday, CURDATE()) IN (1, 2, 3);

DELETE FROM dog 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM humster 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM horse_donkey 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM camel 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM guineaPig 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM mule 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM parrot 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

DELETE FROM rabbit 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 1 AND 3;

CREATE TABLE animals (
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name CHAR(30),
    commands TEXT,
    birthday DATE,
    age TEXT,
    animal_type ENUM('cat','dog','humster', 'horse_donkey', 'rabbit', 
    'guineaPig', 'mule', 'parrot', 'camel', 'young_animals') NOT NULL
);

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'cat'
FROM cat;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'dog'
FROM dog;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'humster'
FROM humster;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'guineaPig'
FROM guineaPig;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'mule'
FROM mule;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'parrot'
FROM parrot;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'rabbit'
FROM rabbit;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'horse_donkey'
FROM horse_donkey;

INSERT INTO animals (animal_name, commands, birthday, age, animal_type)
SELECT animal_name, commands, birthday, age_animal(birthday), 'young_animals'
FROM young_animal;