-- 1) Вывести все заказы определённого работника 
-- (на вход фамилия + id) : 
-- Вывести комплектующие, имя клиента, дату, к которой нужно сделать заказ

SELECT o.o_id AS order_id, pu.model AS pu_model, gpu.model AS gpu_model, cpu.model AS cpu_model, ram.model AS ram_model, c.name AS client_name, o.sd AS shipping_date;
FROM orders o, model m, clients c, workers w, pu, gpu, cpu, ram;
WHERE w.name = input_worker_name AND w.w_id = input_worker_id;
    AND c.c_id = o.c_id AND o.w_id = w.w_id AND o.m_id = m.m_id;
    AND m.pu_id = pu.pu_id AND m.gpu_id = gpu.gpu_id AND m.cpu_id = cpu.cpu_id AND m.ram_id = ram.ram_id;
ORDER BY o.o_id ASC


