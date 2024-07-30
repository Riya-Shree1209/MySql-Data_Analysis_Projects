create schema Cars;
use cars;
-- Read cars Data
SELECT 
    *
FROM
    car_dekho;
-- Total cars: To get count of total records
SELECT 
    COUNT(Name) AS total_cars
FROM
    car_dekho;
-- How many cars will be available in 2023
SELECT 
    COUNT(Name) AS cars_for_2023
FROM
    car_dekho
WHERE
    year = 2023;
-- How many cars available in 2020, 2021, 2022
SELECT 
    COUNT(Name) AS cars_for_2020
FROM
    car_dekho
WHERE
    year = 2020;--  74
SELECT 
    COUNT(Name) AS cars_for_2021
FROM
    car_dekho
WHERE
    year = 2021;-- 7
SELECT 
    COUNT(Name) AS cars_for_2022
FROM
    car_dekho
WHERE
    year = 2022;-- 7
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year;
-- To print the total of all cars by year
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year;
-- Diesel cars available in 2020?
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'Diesel';
-- Petrol cars in 2020
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'Petrol';
-- --Print year wise fuel cars(petrol, diesel, cng)
SELECT 
    year, COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Petrol'
GROUP BY year;
SELECT 
    year, COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Diesel'
GROUP BY year;
SELECT 
    year, COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'CNG'
GROUP BY year;
-- which year had more than 100 cars
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) > 100;
-- which year had less than 50 cars
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) < 50;
-- Car count details from 2015 and 2023
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;
-- Car details from 2015 and 2023
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;



 