-- Перечислите номера моделей любых типов,
-- имеющих самую высокую цену по всей имеющейся в базе данных продукции.

WITH max_price AS (
    SELECT model, price
    FROM PC
    WHERE price IN (
        SELECT MAX(price)
        FROM PC)

UNION

SELECT model,
       price
FROM Laptop
WHERE price IN (
    SELECT MAX(price)
    FROM Laptop)

UNION

SELECT model,
       price
FROM Printer
WHERE price IN (
    SELECT MAX(price)
    FROM Printer))

SELECT model
FROM max_price
WHERE price IN (
    SELECT MAX(price)
	FROM max_price)