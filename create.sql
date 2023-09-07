CREATE TABLE IF NOT EXISTS landmark (
                                        id serial primary key not null,
                                        name varchar(255) not null check ( length(name) > 0 ),
                                        country varchar(255) not null check ( length(country) > 0 ),
                                        rating int not null check ( rating >= 0 and rating <= 5 ),
                                        link text
);

CREATE TABLE IF NOT EXISTS colors (
    id serial primary key not null,
    color varchar(255) not null
);

CREATE TABLE IF NOT EXISTS human (
                                     id serial primary key not null,
                                     name varchar(255) not null check ( length(name) > 0 ),
                                     surname varchar(255) not null check ( length(surname) > 0 ),
                                     age int not null check ( age >= 0 and age <= 120),
                                     eyes_color int not null,
                                     foreign key (eyes_color) references colors(id)
);

CREATE TABLE IF NOT EXISTS human_landmark (
                                              human_id int not null,
                                              landmark_id int not null,
                                              foreign key (human_id) references human(id),
                                              foreign key (landmark_id) references landmark(id),
                                              unique (human_id, landmark_id)
);

CREATE TABLE IF NOT EXISTS mountain (
                                        id serial primary key not null,
                                        name varchar(255) not null check ( length(name) > 0 ),
                                        X double precision not null,
                                        Y double precision not null,
                                        Z double precision not null

);

CREATE TABLE IF NOT EXISTS cave (
                                    id serial primary key not null,
                                    X double precision not null,
                                    Y double precision not null,
                                    Z double precision not null,
                                    availability bool
);

CREATE TABLE IF NOT EXISTS road (
                                    id serial primary key not null,
                                    length int not null,
                                    condition int not null check ( condition >= 0 and condition <= 5),
                                    cave_id int,
                                    foreign key (cave_id) references cave(id)
);

CREATE TABLE IF NOT EXISTS cave_visits (
                                           human_id int not null,
                                           cave_id int not null,
                                           was_visited bool,
                                           foreign key (human_id) references human(id),
                                           foreign key (cave_id) references cave(id),
                                           unique (human_id, cave_id)
);

CREATE TABLE IF NOT EXISTS cave_in_mountain (
                                                mountain_id int not null,
                                                cave_id int not null,
                                                cave_in_mountain bool,
                                                foreign key (mountain_id) references mountain(id),
                                                foreign key (cave_id) references cave(id),
                                                unique (mountain_id, cave_id)
);
