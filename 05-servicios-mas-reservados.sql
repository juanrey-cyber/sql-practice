-- 05 — Servicios más reservados (GROUP BY + COUNT)
-- EN: Which service gets booked most? Excludes cancelled bookings.
-- ES: ¿Qué servicio se reserva más? Sin contar las canceladas.
-- Demuestra: GROUP BY, COUNT, WHERE, ORDER BY.
SELECT servicio, COUNT(*) AS num_reservas
FROM reservas
WHERE estado <> 'cancelada'
GROUP BY servicio
ORDER BY num_reservas DESC, servicio;
