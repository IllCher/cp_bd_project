-- 3) Определить время завершения заказа (квалификация работника). 
-- (if скилл low = 10 дней, med = 5 дней, high = 3 дня) на вход - дата заказа

SELECT w.w_id AS id, w.exp, COUNT(*) AS counts;
FROM orders o, workers w;
WHERE  W.w_id = O.w_id;
GROUP BY W.w_id, W.exp;
INTO CURSOR tmp;

SELECT INPUT_DATE + IIF(w.skill = "Low", 10, IIF(w.skill = "Medium", 5, 3));
FROM tmp, workers w;
WHERE tmp.counts = (SELECT MIN(counts) FROM tmp);
    AND tmp.exp = (SELECT MAX(exp) FROM tmp) AND w.w_id = tmp.id;

