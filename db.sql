CREATE TABLE auth_user (
    id serial PRIMARY KEY,
    username character varying(255) NOT NULL UNIQUE,
    password character varying(255) NOT NULL,
    is_superuser boolean NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    is_active boolean NOT NULL
);

CREATE TABLE music (
    id serial PRIMARY KEY,
    musicname character varying(255) NOT NULL,
    singername character varying(255) NOT NULL,
    time int default(0)

);

CREATE TABLE comment (
    id serial PRIMARY KEY,
    username character varying(255) NOT NULL,
    musicname character varying(255) NOT NULL,
    content character varying(1000) NOT NULL,
    is_shield boolean NOT NULL
);

CREATE TABLE musiclist(
    id serial PRIMARY KEY,
    listname character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    is_favorite boolean NOT NULL
);

CREATE TABLE singer (
    id serial PRIMARY KEY,
    singername character varying(255) NOT NULL,
    sex character varying(10) NOT NULL,
    birthyear int,
    area character varying(255) NOT NULL
);