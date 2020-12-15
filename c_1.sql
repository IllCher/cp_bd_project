-- 1) Вывести заказы определенного клиента (на вход имя клиента) - айди заказа, номер пк, дата поставки

SELECT o.o_id AS order_id, o.m_id AS model_id, o.sd AS shipping_date;
FROM orders o, clients c;
WHERE c.name = INPUT_CLIENT_NAME AND c.c_id = o.c_id