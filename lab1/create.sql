create table if not exists colors (
                                      id serial primary key not null,
                                      color varchar(255) unique not null check ( length(color) > 0 )
);

create table if not exists passports (
                                         id serial primary key not null,
                                         series int not null unique,
                                         number int not null unique,
                                         country varchar(255) not null
);

create table if not exists humans (
                                      id serial primary key not null,
                                      name varchar(255) not null check ( length(name) > 0 ),
                                      surname varchar(255) not null check ( length(name) > 0 ),
                                      age int not null check ( age > 0 ),
                                      eyes_color int references colors(id) not null ,
                                      passport_id int references passports(id) not null unique
);

create table if not exists locations (
                                         id serial primary key not null,
                                         X double precision not null,
                                         Y double precision not null,
                                         Z double precision not null,
                                         availability bool
);

create table if not exists location_visits (
                                               human_id int references humans(id) not null ,
                                               location_id int references locations(id) not null ,
                                               was_visited bool not null
);


create table if not exists landmarks (
                                         id serial primary key not null,
                                         name varchar(255) not null,
                                         country varchar(255) not null,
                                         rating int not null check ( rating >= 1 and rating <= 5 ),
                                         description text,
                                         location_id int not null references locations(id)
);

create table if not exists mountains (
                                         id serial primary key not null,
                                         name varchar(255) not null check ( length(name) > 0 ),
                                         description text,
                                         location_id int not null references locations(id)
);


create table if not exists caves (
                                     id serial primary key not null,
                                     name varchar(255) unique not null check ( length(name) > 0 ),
                                     description text,
                                     mountain_id int not null references mountains(id),
                                     location_id int not null references locations(id)
);

create table if not exists roads (
                                     id serial not null,
                                     length int not null check ( length > 0 ),
                                     condition int not null check ( condition >= 1 and condition <= 5 ),
                                     cave_id int not null references caves(id)
);
