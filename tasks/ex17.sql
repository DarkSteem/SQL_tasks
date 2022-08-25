-- Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
-- Вывести: type, model, speed

SELECT DISTINCT p.type,
                p.model,
                l.speed
FROM laptop l
INNER JOIN product p ON l.model=p.model
WHERE l.speed < (
    SELECT min(speed)
    FROM pc)