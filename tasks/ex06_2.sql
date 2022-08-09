-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

SELECT DISTINCT p.maker,
                l.speed
FROM product p
INNER JOIN laptop l on p.model = l.model
WHERE l.hd >= 10
