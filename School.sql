CREATE DATABASE school;

USE school;

CREATE TABLE class(
    number TINYINT NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    egn CHAR(10) NOT NULL PRIMARY KEY,
    gender ENUM('м', 'ж') NOT NULL,
    city VARCHAR(45) NOT NULL,
    street_name VARCHAR(45) NOT NULL,
    street_number SMALLINT NOT NULL,
    class TINYINT NOT NULL,
    phone_number CHAR(10) NOT NULL,
    hobby VARCHAR(50));

INSERT INTO class(number, first_name, last_name, egn, gender, city, street_name, street_number, class, phone_number, hobby)
VALUES (6, 'Дамян', 'Атанасов', '0364879135', 'м', 'Стара Загора','Лом', 56, 12, '0889463497', 'фитнес'),
       (3, 'Владислав', 'Стоянов', '0364978138', 'м', 'Стара Загора','Струма', 12, 12, '0879463186',  'плуване'),
       (17, 'Симеон', 'Тодоров', '0397613892', 'м', 'Русе','Дунав', 26, 8, '0887943196', 'роботика'),
       (16, 'Женевиев', 'Кирова', '0434976138', 'ж', 'Стара Загора','М.М.Кусев', 41, 11, '0879463597',  'пиано'),
       (9, 'Кристиян', 'Димитров', '0376137946', 'м', 'София','Рила', 19, 8, '0887946387',  'китара'),
       (1, 'Александра', 'Узунова', '0364973564', 'ж', 'Стара Загора','Цар Симеон Велики', 36, 12, '0879463567',  'балет'),
       (4, 'Виктория', 'Иванова', '0297634679', 'ж', 'Стара Загора','Лом', 22, 12, '0879463597', 'цигулка');

SELECT * FROM class
WHERE class = 8;

SELECT * FROM class
WHERE last_name = 'Стоянов';

SELECT * FROM class
WHERE hobby NOT LIKE '%китара%' OR '%пиано%' OR '%цигулка%';

SELECT * FROM class
WHERE gender = 'м';

SELECT * FROM class
WHERE (street_name = 'Дунав' OR street_name = 'Рила' OR street_name = 'Лом');

SELECT * FROM class
WHERE (last_name LIKE 'A%' OR last_name LIKE 'К%');

SELECT * FROM class
WHERE first_name LIKE 'С%' AND last_name LIKE 'Т%';

SELECT * FROM class
WHERE street_name = 'Струма' AND gender = 'м';

SELECT * FROM class
WHERE (first_name LIKE 'И%' OR first_name LIKE 'М%') AND last_name NOT LIKE 'С%';

SELECT * FROM class;
@tdmitev
