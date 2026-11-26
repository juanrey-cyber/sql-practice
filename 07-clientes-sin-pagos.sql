-- 07 — Clientes que nunca pagaron (cadena de LEFT JOIN)
-- EN: Customers with no payment at all — no booking, or booking without payment.
-- ES: Clientes que nunca pagaron nada: sin reserva, o con reserva sin pago.
-- Demuestra: LEFT JOIN en cadena, IS NULL, DISTINCT.
SELECT DISTINCT c.id, c.nombre, c.ciudad
FROM clientes c
LEFT JOIN reservas r ON r.cliente_id = c.id
LEFT JOIN pagos p ON p.reserva_id = r.id
WHERE p.id IS NULL
ORDER BY c.nombre;
