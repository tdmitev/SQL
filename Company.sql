CREATE DATABASE company2;

USE company2;

#Да се изведат служителите с определена длъжност.
# Да се изведат данните за служителите със заплата, която е между 500 и 800лв.
# Служителите да се подредят по възраст.
#Да се намери средната заплата по отдели
#Да се изведат всички служители с фамилия Петков или Петкова

CREATE TABLE company2(
    id CHAR(5) NOT NULL PRIMARY KEY,
    first_name VARCHAR(16) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    position VARCHAR(20) NOT NULL,
    age MEDIUMINT NOT NULL,
    salary DECIMAL(6, 2) NOT NULL,
    internship SMALLINT NOT NULL);

INSERT INTO company2(id, first_name, last_name, position, age, salary, internship)
VALUES ('1', 'Иван', 'Атанасов', 'управител', 44, 4230, 22),
       ('2', 'Ясен', 'Петков', 'товарач', 31, 630, 4),
       ('3', 'Катя', 'Иванова', 'чистачка',  56, 780, 2),
       ('4', 'Елиат', 'Силва', 'мениджър', 29, 6372, 6),
       ('5', 'Митко', 'Радев', 'продавач', 23, 580, 1),
       ('6', 'Радко', 'Василев', 'товарач', 35, 600, 3),
       ('7', 'Дамян', 'Георгиев', 'мениджър', 30, 2750, 7),
       ('8', 'Митко', 'Лесов', 'управител', 40, 3820, 18),
       ('9', 'Чавдар', 'Митев', 'мениджър', 28, 4720, 6),
       ('10', 'Коце', 'Петков', 'продавач', 19, 510, 1),
       ('11', 'Тодор', 'Неделев', 'чистач', 26, 420, 4),
       ('12', 'Благой', 'Никифоров', 'продавач', 33, 960, 8);

SELECT * FROM company2;

SELECT * FROM company2
WHERE position = 'мениджър';

SELECT * FROM company2
WHERE salary BETWEEN 500 AND 800;

SELECT * FROM company2
ORDER BY age DESC;

SELECT position, AVG(salary)  AS avg_salary FROM company2
GROUP BY position;

SELECT first_name, last_name, position, age, internship FROM company2
ORDER BY internship
LIMIT 4 OFFSET 3;

SELECT * FROM company2
WHERE (last_name LIKE 'Н%');

SELECT SUM(internship) AS internship FROM company2;

SELECT * FROM company2
WHERE age < 35;

SELECT * FROM company2
WHERE last_name LIKE 'Петков' OR 'Петкова';
