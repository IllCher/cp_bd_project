-- 3) Поиск по всем комплектующим по названию. ITEMS

SELECT 'PU' AS item_type, producer, model, quantity FROM pu WHERE model = INPUT_MODEL;
UNION;
SELECT 'GPU' AS item_type, producer, model, quantity FROM gpu WHERE model = INPUT_MODEL;
UNION;
SELECT 'CPU' AS item_type, producer, model, quantity FROM cpu WHERE model = INPUT_MODEL;
UNION;
SELECT 'RAM' AS item_type, producer, model, quantity FROM ram WHERE model = INPUT_MODEL
