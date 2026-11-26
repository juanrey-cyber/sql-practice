-- 08 — Tasa de cancelación por mes (CTE)
-- EN: Cancellation rate per month: cancelled / total bookings.
-- ES: Tasa de cancelación por mes: canceladas / total de reservas.
-- Demuestra: WITH (CTE), CASE, CAST a REAL para evitar división entera.
WITH por_mes AS (
    SELECT strftime('%Y-%m', fecha) AS mes,
           COUNT(*) AS total,
           SUM(CASE WHEN estado = 'cancelada' THEN 1 ELSE 0 END) AS canceladas
    FROM reservas
    GROUP BY mes
)
SELECT mes, total, canceladas,
       ROUND(100.0 * canceladas / total, 1) AS tasa_cancelacion_pct
FROM por_mes
ORDER BY mes;
