-- 04 — Clientes con más de una reserva (GROUP BY + HAVING)
-- EN: Repeat customers: who booked more than once?
-- ES: Clientes que repiten: ¿quién reservó más de una vez?
-- Demuestra: GROUP BY, COUNT, HAVING.
SELECT c.nombre AS cliente, COUNT(r.id) AS num_reservas
FROM clientes c
INNER JOIN reservas r ON r.cliente_id = c.id
GROUP BY c.id, c.nombre
HAVING COUNT(r.id) > 1
ORDER BY num_reservas DESC, c.nombre;
