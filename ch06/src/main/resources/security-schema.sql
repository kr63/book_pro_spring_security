create table people
(
    name varchar_ignorecase(50) not null primary key,
    key  varchar_ignorecase(50)
);
create table roles
(
    name varchar_ignorecase(50) not null primary key,
    role varchar_ignorecase(50) not null,
    constraint fk_authorities_users foreign key (name) references people (name)
);
commit

