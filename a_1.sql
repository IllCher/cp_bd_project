-- 1) имя клиента, сумма заказа, комплектующие, имя работника, дата поставки 
-- (на вход номер заказа + имя клиента) REPORT

SELECT c.name AS client_name, m.estprice AS price, pu.model AS model, gpu.model AS gpu_model, cpu.model AS cpu_model, ram.model AS ram_model, w.name AS worker_name, o.sd AS shipping_date;
FROM clients c, orders o, workers w, model m, pu, gpu, cpu, ram;
WHERE o.c_id = c.c_id AND o.w_id = w.w_id AND o.m_id = m.m_id;
    AND m.pu_id = pu.pu_id AND m.gpu_id = gpu.gpu_id AND m.cpu_id = cpu.cpu_id AND m.ram_id = ram.ram_id;
    AND c.name = input_name AND o.o_id = input_order_id
