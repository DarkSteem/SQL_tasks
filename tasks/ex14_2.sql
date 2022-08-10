-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10

SELECT s.class,
       s.name,
       c.country
FROM ships s
INNER JOIN classes c on c.class = s.class
WHERE c.numguns >= 10