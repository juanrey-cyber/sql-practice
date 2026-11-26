-- 09 — Ranking de clientes por gasto (window function RANK)
-- EN: Rank customers by total spend. Ties share the same rank.
-- ES: Ranking de clientes por gasto total. Los empates comparten el puesto.
-- Demuestra: RANK() OVER, subconsulta agregada, window function.
SELECT cliente, total_gastado,
       RANK() OVER (ORDER BY total_gastado DESC) AS puesto
FROM (
    SELECT c.nombre AS cliente, SUM(p.monto) AS total_gastado
    FROM pagos p
    INNER JOIN reservas r ON r.id = p.reserva_id
    INNER JOIN clientes c ON c.id = r.cliente_id
    GROUP BY c.id, c.nombre
)
ORDER BY puesto, cliente;
