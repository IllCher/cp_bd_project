-- 2) Вывести все заказы  : Вывести комплектующие, имя клиента, дату, к которой нужно сделать заказ 
-- (поиск по рабочему, по клиенту, по дате, когда эти пк были сделаны) ORDERS

SELECT c.name AS client_name, pu.model AS pu, gpu.model AS gpu, cpu.model AS cpu, ram.model AS ram, o.sd AS shipping_date
FROM clients c, pu, gpu, cpu, ram, orders o, workers w, model m;
WHERE o.w_id = w.w_id AND o.m_id = m.m_id AND o.c_id = c.c_id;
    AND m.pu_id = pu.pu_id AND m.gpu_id = gpu.gpu_id AND m.cpu_id = cpu.cpu_id AND m.ram_id = ram.ram_id;
    AND w.name = INPUT_WORKER_NAME AND c.name = INPUT_CLIENT_NAME AND o.rd = INPUT_CREATION_DATE;
