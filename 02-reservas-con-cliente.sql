-- 02 — Reservas con nombre del cliente (INNER JOIN)
-- EN: List every booking with the customer name, service, date and price.
-- ES: Todas las reservas con el nombre del cliente, servicio, fecha y precio.
-- Demuestra: INNER JOIN, ORDER BY.
SELECT r.id AS reserva_id, c.nombre AS cliente, r.fecha, r.servicio, r.estado, r.precio
FROM reservas r
INNER JOIN clientes c ON c.id = r.cliente_id
ORDER BY r.fecha, r.id;
