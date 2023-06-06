CREATE DATABASE World;

USE World;
#1. Изведете данните за определена държава, например България
#2 Всички държави в континента Европа
#3. Всички държави в континента Азия, които имат по-голяма площ от България
#4. Подредете държавите по площ в намаляващ ред
#5. Сумирайте по площ държавите в отделните континенти
#6. Намерете средната продължителност на живот по континенти
#7. Намерете държавата с максимална и минимална продължителност на живот в отделните континенти.
#8. Топ 5 на държавите с най-висока продължителност на живот
#9. Направете справка за двете държавите с най-висока продължителност на живот след първите 3.
#10.Направете справка, в която за GNP е използван синоним.
#11. Подменете всички букви с главни в таблицата

DROP TABLE country;

CREATE TABLE country(
    code CHAR(3) NOT NULL PRIMARY KEY,
    name VARCHAR(52) NOT NULL,
    continent ENUM('Африка', 'Азия', 'Европа', 'Северна Америка'),
    surface_area DECIMAL(12, 2) NOT NULL,
    population INT NOT NULL,
    life_expectancy DECIMAL(3, 1) NOT NULL,
    gnp DECIMAL(5, 3) NOT NULL);

INSERT INTO country(code, name, continent, surface_area, population, life_expectancy, gnp)
VALUES ('359', 'България', 'Европа', 110993.6, 6999908, 74.9, 0.164),
       ('+1', 'САЩ', 'Северна Америка', 9826675, 328239523, 78.9, 21.439 ),
       ('+49', 'Германия', 'Европа', 357386, 83190556, 81.2, 4.444),
       ('+81', 'Япония', 'Азия', 377972, 126513062, 84.5 , 5.888),
       ('+20', 'Египет', 'Африка', 1010407, 100075480, 71.8 , 1.391),
       ('+86', 'Китай', 'Азия', 9596961, 1400050000, 76.7, 29.471);

SELECT * FROM country;

SELECT * FROM country
WHERE name = 'България';

SELECT * FROM country
WHERE continent = 'Европа';

SET @surface_area_bg := (SELECT surface_area FROM country WHERE name = 'България');

SELECT * FROM country
WHERE continent = 'Азия' AND surface_area > @surface_area_bg;

SELECT * FROM country
ORDER BY surface_area DESC;

SELECT SUM(surface_area) AS sum_surface_area FROM country;

SELECT continent, CAST(AVG(life_expectancy) AS CHAR(4)) AS avg_life_exp FROM country
GROUP BY continent;

SELECT name, MAX(life_expectancy) AS life_exp FROM country
GROUP BY life_expectancy;

SELECT name, life_expectancy FROM country
ORDER BY life_expectancy DESC
LIMIT 5;

SELECT name, life_expectancy FROM country
ORDER BY life_expectancy
LIMIT 2 OFFSET 3;

SELECT code, name, gnp AS gross_national_product FROM country;

SELECT code, UPPER(name) AS name, UPPER(continent) AS continent FROM country;
