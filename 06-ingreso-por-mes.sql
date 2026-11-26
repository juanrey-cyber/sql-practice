-- 06 — Ingreso por mes (GROUP BY sobre fecha)
-- EN: Revenue per month from payments.
-- ES: Ingreso por mes, según los pagos.
-- Demuestra: strftime para agrupar por mes, SUM, GROUP BY.
SELECT strftime('%Y-%m', fecha_pago) AS mes, SUM(monto) AS ingreso, COUNT(*) AS num_pagos
FROM pagos
GROUP BY mes
ORDER BY mes;
