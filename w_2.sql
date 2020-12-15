-- 2) Вывести все комплектующие, имеющиеся на складе (тип, название, кол-во)

SELECT 'PU' AS item_type, producer, model, quantity FROM pu;
UNION;
SELECT 'GPU' AS item_type, producer, model, quantity FROM gpu;
UNION;
SELECT 'CPU' AS item_type, producer, model, quantity FROM cpu;
UNION;
SELECT 'RAM' AS item_type, producer, model, quantity FROM ram


