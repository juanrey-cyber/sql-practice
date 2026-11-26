-- 01 — Clientes SIN reserva (LEFT JOIN + IS NULL)
-- EN: Which customers never made a booking? The classic "find the missing rows" question.
-- ES: ¿Qué clientes nunca hicieron una reserva? La pregunta clásica de "filas que faltan".
-- Demuestra: LEFT JOIN, IS NULL, ORDER BY.
SELECT c.id, c.nombre, c.ciudad, c.fecha_registro
FROM clientes c
LEFT JOIN reservas r ON r.cliente_id = c.id
WHERE r.id IS NULL
ORDER BY c.nombre;
