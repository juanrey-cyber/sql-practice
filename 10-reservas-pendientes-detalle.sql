-- 10 — Reservas pendientes, con detalle (JOIN + WHERE)
-- EN: Pending bookings with customer, service, date and price — the follow-up list.
-- ES: Reservas pendientes con cliente, servicio, fecha y precio: la lista para dar seguimiento.
-- Demuestra: INNER JOIN, WHERE, ORDER BY.
SELECT r.id AS reserva_id, c.nombre AS cliente, c.email, r.fecha, r.servicio, r.precio
FROM reservas r
INNER JOIN clientes c ON c.id = r.cliente_id
WHERE r.estado = 'pendiente'
ORDER BY r.fecha;
