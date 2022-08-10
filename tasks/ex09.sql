-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT DISTINCT p.maker
FROM Product p
INNER JOIN PC pc on p.model = pc.model
WHERE pc.speed >= 450
ORDER BY 1