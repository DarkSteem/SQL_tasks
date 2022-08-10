-- Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол

SELECT ROUND(AVG(speed), 2)
FROM Laptop
WHERE price > 1000