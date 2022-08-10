-- Найдите среднюю скорость ПК, выпущенных производителем A

SELECT ROUND(AVG(speed), 2)
FROM PC pc
INNER JOIN Product p ON pc.model=p.model
WHERE p.maker = 'A'