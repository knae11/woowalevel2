create table if not exists STATION
(
    id bigint auto_increment not null,
    name varchar(255) not null unique,
    primary key(id)
    );

create table if not exists LINE
(
    id bigint auto_increment not null,
    name varchar(255) not null unique,
    color varchar(20) not null unique,
    extra_fare int not null DEFAULT 0,
    primary key(id)
    );

create table if not exists SECTION
(
    id bigint auto_increment not null,
    line_id bigint not null,
    up_station_id bigint not null,
    down_station_id bigint not null,
    distance int not null,
    primary key(id),
    foreign key (up_station_id) references STATION(id),
    foreign key (down_station_id) references STATION(id)
    );

create table if not exists MEMBER
(
    id bigint auto_increment not null,
    email varchar(255) not null unique,
    password varchar(255) not null,
    age int not null,
    primary key(id)
);
