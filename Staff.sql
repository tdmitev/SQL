CREATE DATABASE Sfaff;

USE Sfaff;

CREATE TABLE employees(
    number CHAR(5) NOT NULL PRIMARY KEY,
    first_name VARCHAR(16) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    works_since DATE NOT NULL,
    worked_hours MEDIUMINT NOT NULL,
    weekly_hours SMALLINT NOT NULL,
    department VARCHAR(20) NOT NULL,
    health_insurance BOOL NOT NULL,
    marital_status ENUM('несемеен', 'омъжена', 'женен'));

ALTER TABLE employees
ADD COLUMN sex ENUM('м', 'ж') AFTER last_name;

ALTER TABLE employees
ALTER health_insurance SET DEFAULT true;

INSERT INTO employees(number, first_name, last_name, sex, works_since, worked_hours, weekly_hours, department, marital_status)
VALUES ('12564', 'Иван', 'Атанасов', 'м', '2020-09-07', 40, 10, 'маркетинг', 'женен'),
       ('12565', 'Мария', 'Иванова', 'ж', '2015-07-08', 30, 10, 'маркетинг', 'омъжена'),
       ('12566', 'Петър', 'Петров', 'м', '2014-04-03', 40, 15, 'мениджмънт', 'несемеен'),
       ('12567', 'Петя', 'Георгиева', 'ж', '2005-05-02', 30, 10, 'счетоводство', 'омъжена'),
       ('12568', 'Николина', 'Димитрова', 'ж', '2001-04-06', 20, 10, 'счетоводство', 'несемеен'),
       ('12569', 'Георги', 'Петров', 'м', '2006-10-05', 40, 15, 'мениджмънт', 'женен'),
       ('12570', 'Асен', 'Димитров', 'м', '2006-05-08', 30, 10, 'счетоводство', 'женен'),
       ('12571', 'Добромир', 'Динев', 'м', '2003-02-06', 40, 15, 'продажби', 'несемеен'),
       ('12572', 'Анна', 'Желязкова', 'ж', '2008-02-06', 40, 15, 'продажби', 'омъжена'),
       ('12573', 'Петя', 'Георгиева', 'ж', '2005-07-05', 40, 10, 'продажби', 'несемеен'),
       ('12574', 'Марин', 'Димитров', 'м', '2009-03-07', 40, 15, 'маркетинг', 'женен'),
       ('12575', 'Васил', 'Георгиев', 'м', '2015-01-08', 40, 10, 'счетоводство', 'женен');

UPDATE employees
SET first_name = 'Мария' AND last_name = 'Димитрова'
WHERE number = '12572';

UPDATE employees
SET health_insurance = false
WHERE number = '12574';

SELECT * FROM employees;

SELECT * FROM employees
WHERE marital_status = 'семеен' OR 'омъжен' OR 'омъжена';

SELECT * FROM employees
WHERE last_name LIKE 'Димитров' OR 'Димитрова';

SELECT * FROM employees
WHERE health_insurance = false;

SELECT * FROM employees
WHERE department = 'маркетинг';

SELECT * FROM employees
WHERE department = 'мениджмънт';

SELECT * FROM employees
WHERE department = 'счетоводство';

SELECT * FROM employees
WHERE department = 'продажби';

SELECT * FROM employees
WHERE department = 'продажби' AND weekly_hours = 10;

SELECT * FROM employees
ORDER BY worked_hours;

SELECT * FROM employees
WHERE sex = 'м';

SELECT * FROM employees
ORDER BY works_since;
