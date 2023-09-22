insert into colors (color) values ('green');
insert into colors (color) values ('brown');
insert into colors (color) values ('black');
insert into colors (color) values ('blue');

insert into passports (series, number, country) VALUES (7143, 130831, 'russia');
insert into passports (series, number, country) VALUES (3141, 73881, 'usa');
insert into passports (series, number, country) VALUES (1144, 91034, 'brazil');
insert into passports (series, number, country) VALUES (1381, 1414, 'france');


insert into humans (name, surname, age, eyes_color, passport_id) VALUES ('Artem', 'Lysenko', 19, 1, 1);
insert into humans (name, surname, age, eyes_color, passport_id) VALUES ('Ivan', 'Petrov', 42, 4, 2);
insert into humans (name, surname, age, eyes_color, passport_id) VALUES ('Leon', 'Maxwell', 9, 1, 4);
insert into humans (name, surname, age, eyes_color, passport_id) VALUES ('Petya', 'Bondar', 24, 1, 3);

insert into locations (x, y, z, availability) VALUES (3, 5, 9, true);
insert into locations (x, y, z, availability) VALUES (18.141, 41.41, 41.514, false);
insert into locations (x, y, z, availability) VALUES (75.14151, 1.515, 43.4151, null);
insert into locations (x, y, z, availability) VALUES (13.41, 41.531531, 41.114, true);

insert into location_visits (human_id, location_id, was_visited) VALUES (1, 1, true);
insert into location_visits (human_id, location_id, was_visited) VALUES (1, 2, true);
insert into location_visits (human_id, location_id, was_visited) VALUES (1, 3, true);
insert into location_visits (human_id, location_id, was_visited) VALUES (1, 4, true);
insert into location_visits (human_id, location_id, was_visited) VALUES (2, 2, true);
insert into location_visits (human_id, location_id, was_visited) VALUES (2, 3, true);
insert into location_visits (human_id, location_id, was_visited) VALUES (2, 4, false);
insert into location_visits (human_id, location_id, was_visited) VALUES (3, 4, false);

insert into landmarks (name, country, rating, description, location_id) VALUES ('landmark1', 'ru', 4, null, 1);
insert into landmarks (name, country, rating, description, location_id) VALUES ('landmark2', 'ru', 4, null, 2);

insert into mountains (name, description, location_id) VALUES ('mountain1', 'wow', 3);

insert into caves (name, description, mountain_id, location_id) VALUES ('cave1', null, 1, 4);


insert into roads (length, condition, cave_id) VALUES (141, 3, 1);
insert into roads (length, condition, cave_id) VALUES (13, 1, 1);
insert into roads (length, condition, cave_id) VALUES (100, 5, 1);

