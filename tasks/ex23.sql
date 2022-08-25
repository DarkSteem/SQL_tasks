-- Найдите производителей, которые производили бы как ПК
-- со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker

SELECT p.maker
FROM PC pc
    INNER JOIN Product p ON pc.model = p.model
WHERE speed >= 750

INTERSECT

SELECT p.maker
FROM Laptop l
    INNER JOIN Product p ON l.model = p.model
WHERE speed >= 750