-- Найдите максимальную цену ПК, выпускаемых каждым производителем,
-- у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.

SELECT p.maker,
       MAX(pc.price)
FROM PC pc
    INNER JOIN Product p ON pc.model = p.model
GROUP BY 1