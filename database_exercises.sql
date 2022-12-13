USE codeup_test_db;
CREATE TABLE trainers (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(50),
   last_name  VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

INSERT INTO trainers(first_name, last_name) VALUES
   ('Ash', 'ketchum'),
   ('Brock', 'Harrison'),
   ('Misty', 'Williams');



CREATE TABLE pokemon (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   content TEXT NOT NULL,
   trainer_id INT UNSIGNED NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (trainer_id) REFERENCES trainers (id)
);

INSERT INTO pokemon (trainer_id, content)
VALUES ((select id from trainers where first_name = 'Ash' and last_name = 'ketchum'),
        'Pikachu.');
INSERT INTO pokemon (trainer_id, content)
VALUES ((select id from trainers where first_name = 'Ash' and last_name = 'ketchum'),
        'Charizard.');
INSERT INTO pokemon (trainer_id, content)
VALUES ((select id from trainers where first_name = 'Ash' and last_name = 'ketchum'),
        'Squirtle.');
INSERT INTO pokemon (trainer_id, content)
VALUES ((select id from trainers where first_name = 'Brock' and last_name = 'Harrison'),
        'Onix.');
INSERT INTO pokemon (trainer_id, content)
VALUES ((select id from trainers where first_name = 'Brock' and last_name = 'Harrison'),
        'Geodude.');



CREATE TABLE types (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   type VARCHAR(255),
   PRIMARY KEY (id)
);

INSERT INTO types(type) VALUES
   ('Electric'),
   ('Fire'),
   ('Water'),
   ('Rock');


CREATE TABLE pokemon_type (
   pokemon_id INTEGER UNSIGNED NOT NULL,
   type_id INTEGER UNSIGNED NOT NULL,
   FOREIGN KEY (pokemon_id) REFERENCES pokemon(id),
   FOREIGN KEY (type_id) REFERENCES types(id)
);

INSERT INTO pokemon_type(pokemon_id, type_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5,4);
