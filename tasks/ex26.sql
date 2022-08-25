-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква).
-- Вывести: одна общая средняя цена.

SELECT sum(s.price) / sum(s.kol) AS sredn
FROM (
    SELECT price,1 AS kol
    FROM pc,
         product
    WHERE pc.model=product.model
      AND product.maker='A'

    UNION ALL

    SELECT price,1 AS kol
    FROM laptop,
         product
    WHERE laptop.model=product.model
      AND product.maker='A') AS s