DROP DATABASE IF EXISTS look;
CREATE DATABASE look;

\c look;

CREATE TABLE IF NOT EXISTS users (
    user_id serial not null primary key,
    user_name character varying(32) not null,
    last_name character varying(32) not null,
    contact character varying(12) not null,
    gender smallint
);

CREATE TABLE IF NOT EXISTS foods (
    food_id serial not null primary key,
    food_name character varying(32) not null,
    food_cost int not null,
    food_img character varying(512) not null
);
CREATE TABLE IF NOT EXISTS orders (
    order_id serial not null primary key,
    food_id int not null references foods(food_id),
    user_id int not null references users(user_id),
    count int not null
);