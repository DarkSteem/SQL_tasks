-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT p.model,
       p.price
FROM Printer p
WHERE price IN (
    SELECT MAX(price)
    FROM Printer)