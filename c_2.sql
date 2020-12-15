-- 2) Найти рабочего с наименьшим кол-вом заказов.

SELECT w.w_id AS id, exp, COUNT(*) AS counts;
FROM orders o, workers w INTO CURSOR tmp;
WHERE w.w_id = o.w_id;
GROUP BY w.w_id, w.exp;

SELECT MAX(w.name);
FROM tmp, workers w;
WHERE w.w_id = tmp.id AND tmp.counts = (SELECT MIN(counts) FROM tmp);
    AND tmp.exp = (SELECT MAX(exp) FROM tmp);

