insert into landmark (name, country, rating, link) values ('Basilica of the Holy Family', 'Spain', 4, null);
insert into landmark (name, country, rating, link) values ('Coliseum', 'Italy', 5, null);
insert into landmark (name, country, rating, link) values ('Dubai Fountain', 'UAE', 3, null);
insert into landmark (name, country, rating, link) values ('Empire State Building', 'USA', 5, null);
insert into landmark (name, country, rating, link) values ('Cat memorial', 'Russia', 5, 'http://www.evpatori.ru/wp-content/uploads/2021/11/%D0%BA%D0%BE%D1%82-%D1%81-%D1%80%D1%8B%D0%B1%D0%BE%D0%B9.jpg');

insert into colors (color) values ('black');
insert into colors (color) values ('green');
insert into colors (color) values ('blue');
insert into colors (color) values ('brown');

insert into human (name, surname, age, eyes_color) values ('Artem', 'Lysenko', 19, 2);
insert into human (name, surname, age, eyes_color) values ('Nadezhda', 'Naumova', 22, 3);
insert into human (name, surname, age, eyes_color) values ('Ivan', 'Ivanov', 41, 1);

insert into human_landmark (human_id, landmark_id) values (1, 1);
insert into human_landmark (human_id, landmark_id) values (1, 4);
insert into human_landmark (human_id, landmark_id) values (1, 5);
insert into human_landmark (human_id, landmark_id) values (2, 5);

insert into cave (x, y, z, availability) values (13.11341, 85.314, 94.1341, true);
insert into cave (x, y, z, availability) values (13.11341, 85.314, 94.1341, true);
insert into cave (x, y, z, availability) values (13.11341, 85.314, 94.1341, true);

insert into mountain (name, x, y, z) values ('Jomolungma', 53.21414, 75.134, 3.40194);
insert into mountain (name, x, y, z) values ('Chogori', 33.3144, 35.1134, 4.518);
insert into mountain (name, x, y, z) values ('Kanchenjunga', 17.48481, 42.2131, 7.1384);
insert into mountain (name, x, y, z) values ('Lhotse', 51.6422, 48.3123, 3.45141);

insert into cave_in_mountain(mountain_id, cave_id, cave_in_mountain) values (1, 1, true);
insert into cave_in_mountain(mountain_id, cave_id, cave_in_mountain) values (1, 2, false);
insert into cave_in_mountain(mountain_id, cave_id, cave_in_mountain) values (2, 1, true);

insert into cave_visits(human_id, cave_id, was_visited) VALUES (1, 1, true);
insert into cave_visits(human_id, cave_id, was_visited) VALUES (1, 2, true);
insert into cave_visits(human_id, cave_id, was_visited) VALUES (2, 1, true);




insert into road ( length, condition, cave_id) values (1000, 1, 1);
insert into road ( length, condition, cave_id ) values (500, 2, 1);
insert into road ( length, condition, cave_id ) values (783, 2, 2);
insert into road ( length, condition, cave_id ) values (1435, 3, 3);
insert into road ( length, condition, cave_id ) values (783, 1, null);
