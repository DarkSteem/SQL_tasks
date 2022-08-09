-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT model,
       price
FROM pc
WHERE model IN (
    SELECT model
    FROM Product
    WHERE maker = 'B' AND type LIKE '%PC%')

UNION

SELECT model,
       price
FROM laptop
WHERE model IN (
    SELECT model
    FROM Product
    WHERE maker = 'B' AND type LIKE '%Laptop%')

UNION

SELECT model,
       price
FROM printer
WHERE model IN (
    SELECT model
    FROM Product
    WHERE maker = 'B' AND type LIKE '%Printer%')