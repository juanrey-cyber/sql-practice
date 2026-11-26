-- 03 — Ingreso por cliente (JOIN + SUM + GROUP BY)
-- EN: Total paid per customer, highest first. Only customers who paid something.
-- ES: Total pagado por cliente, de mayor a menor. Solo clientes que pagaron algo.
-- Demuestra: JOIN, SUM, GROUP BY, ORDER BY.
SELECT c.nombre AS cliente, SUM(p.monto) AS total_pagado, COUNT(p.id) AS num_pagos
FROM pagos p
INNER JOIN reservas r ON r.id = p.reserva_id
INNER JOIN clientes c ON c.id = r.cliente_id
GROUP BY c.id, c.nombre
ORDER BY total_pagado DESC;
