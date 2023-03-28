CREATE DATABASE taxibd;
\c taxibd
\l

CREATE SCHEMA data;
CREATE TABLE data.passenger (
  id serial PRIMARY KEY,
);


CREATE TABLE data.passenger_rating (
  id serial PRIMARY KEY,
  behavior int,
  punctuality int,
);

CREATE TABLE data.driver_rating (
  id serial PRIMARY KEY,
  skills int,
  car_condition int,
  following_rules int,
);

CREATE TABLE data.driver (
  id serial PRIMARY KEY,
  photo bytea,
);

CREATE TABLE data.driver_car (
  id serial PRIMARY KEY,
  registration_number varchar(25),
  color varchar(25),
);

CREATE TABLE data.car (
  id serial PRIMARY KEY,
  mark varchar(100),
  model varchar(100),
);

CREATE TABLE data.user (
  id serial PRIMARY KEY,
  names varchar(100),
  surname varchar(100),
  email varchar(100),
  phone varchar(100),
);

CREATE TABLE data.vehicle_type (
  id serial PRIMARY KEY,
  car_name varchar(50),
);

CREATE TABLE data.ride (
  id serial PRIMARY KEY,
  distance int,
);

CREATE TABLE data.payment_type (
  id serial PRIMARY KEY,
  name_of_peyment varchar(50),
);

CREATE TABLE data.payment (
  id serial PRIMARY KEY,
  value_money int,
);

CREATE TABLE data.addres (
  id serial PRIMARY KEY,
  street_name varchar(100),
  building_number varchar(25),
  flat_number varchar(10),
  city varchar(25),
  zip_code varchar(25),
  country varchar(25)
);

CREATE TABLE data.locations (
  id serial PRIMARY KEY,
  name_of_location int,
);

INSERT INTO 
  data.passenger_rating (behavior, punctuality)
VALUES
  ('5', '5'),
  ('3', '1'),
  ('4', '5'),
  ('3', '6'),
  ('9', '10');


  INSERT INTO 
  data.driver_rating (skills, car_condition, following_rules)
VALUES
  ('5', '5', '4'),
  ('3', '1', '9'),
  ('4', '5', '2'),
  ('3', '6', '7'),
  ('9', '10', '6');


INSERT INTO 
  data.driver_car (registration_number, color)
VALUES
  ('GD5436', 'black'),
  ('GD4567', 'red'),
  ('GD4356', 'blue'),
  ('GD4567', 'white'),
  ('GD2348', 'orange');

  INSERT INTO 
  data.car (mark, model)
VALUES
  ('nissan', 'micra'),
  ('vw', 'rt'),
  ('mustang', '354'),
  ('ford', 'szybki'),
  ('reno', '10');

  INSERT INTO 
  data.user (names, surname, email, phone)
VALUES
  ('Alicja', 'Budyn', 'alice@wp.pl', '768908543'),
  ('Adam', 'Herbata', 'adamson@wp.pl', '123432567'),
  ('Maja', 'Wysko', 'majocha@gmail.com', '432675438'),
  ('Klaudia', 'Magnus', 'Kloudi@gmail.com', '432876543'),
  ('Kuba', 'Przybysz', 'kubsaa@icloud.com', '654321870');

  INSERT INTO 
  data.vehicle_type (car_name)
VALUES
  ('bieda'),
  ('klasa'),
  ('fancy'),
  ('drogo'),
  ('bieda');

  INSERT INTO 
  data.ride (distance)
VALUES
  ('50'),
  ('30'),
  ('10'),
  ('5'),
  ('7');



  INSERT INTO 
  data.payment_type (name_of_peyment)
VALUES
  ('debet'),
  ('debet'),
  ('karta'),
  ('gotowka'),
  ('gotowka');

  
  INSERT INTO 
  data.payment (value_money)
VALUES
  ('50'),
  ('30'),
  ('10'),
  ('5'),
  ('7');

  
  INSERT INTO 
  data.addres (street_name, building_number, flat_number, city, zip_code, country)
VALUES
  ('Grunwaldzka', '2a', '3', 'Gdansk', '80-000', 'Poland'),
  ('Norwida', '19', '1c', 'Gdynia', '81-000', 'Poland'),
  ('Kolo', '4', '3', 'Gdynia', '80-200', 'Poland'),
  ('korso', '1', '1', 'Wroclaw', '81-33', 'Poland'),
  ('Koszykowa', '86', '44', 'Warszawa', '02-008', 'Warszawa');


 INSERT INTO 
  data.locations (name_of_location)
VALUES
  ('50'),
  ('30'),
  ('10'),
  ('5'),
  ('7');