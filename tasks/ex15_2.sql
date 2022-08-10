-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

SELECT pc.hd
FROM PC pc
GROUP BY pc.hd
HAVING COUNT(pc.hd) >= 2
