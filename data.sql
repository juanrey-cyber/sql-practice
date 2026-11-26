-- Synthetic demo data: fictional customers, fictional bookings. No real people.
INSERT INTO clientes (id, nombre, email, ciudad, fecha_registro) VALUES
(1, 'Ana Torres', 'ana.torres@example.com', 'Miami Beach', '2026-01-05'),
(2, 'Luis Mendez', 'luis.mendez@example.com', 'Miami', '2026-01-12'),
(3, 'Carmen Ruiz', 'carmen.ruiz@example.com', 'North Bay Village', '2026-02-03'),
(4, 'Pedro Soto', 'pedro.soto@example.com', 'Miami Beach', '2026-02-20'),
(5, 'Lucia Fernandez', 'lucia.fernandez@example.com', 'Miami', '2026-03-02'),
(6, 'Jorge Diaz', 'jorge.diaz@example.com', 'Hialeah', '2026-03-15'),
(7, 'Maria Gonzalez', 'maria.gonzalez@example.com', 'Miami Beach', '2026-04-01'),
(8, 'Carlos Vega', 'carlos.vega@example.com', 'Coral Gables', '2026-04-10'),
(9, 'Sofia Ramos', 'sofia.ramos@example.com', 'Miami', '2026-05-06'),
(10, 'Diego Herrera', 'diego.herrera@example.com', 'Miami Beach', '2026-05-18'),
(11, 'Valeria Ortiz', 'valeria.ortiz@example.com', 'North Bay Village', '2026-06-02'),
(12, 'Andres Paredes', 'andres.paredes@example.com', 'Miami', '2026-06-20');

INSERT INTO reservas (id, cliente_id, fecha, servicio, estado, precio) VALUES
(1, 1, '2026-06-02', 'Limpieza profunda', 'completada', 149.00),
(2, 1, '2026-06-20', 'Limpieza estandar', 'completada', 99.00),
(3, 2, '2026-06-05', 'Limpieza de turnover', 'completada', 140.00),
(4, 3, '2026-06-08', 'Limpieza profunda', 'cancelada', 149.00),
(5, 3, '2026-06-25', 'Limpieza estandar', 'pendiente', 99.00),
(6, 4, '2026-06-10', 'Limpieza de ventanas', 'completada', 79.00),
(7, 5, '2026-06-12', 'Limpieza profunda', 'completada', 149.00),
(8, 5, '2026-06-28', 'Limpieza profunda', 'pendiente', 149.00),
(9, 6, '2026-06-15', 'Limpieza estandar', 'completada', 99.00),
(10, 7, '2026-06-18', 'Limpieza de turnover', 'completada', 140.00),
(11, 8, '2026-06-22', 'Limpieza profunda', 'cancelada', 149.00),
(12, 2, '2026-07-03', 'Limpieza estandar', 'pendiente', 99.00),
(13, 9, '2026-07-05', 'Limpieza de turnover', 'completada', 140.00),
(14, 10, '2026-07-07', 'Limpieza profunda', 'completada', 149.00),
(15, 4, '2026-07-09', 'Limpieza estandar', 'pendiente', 99.00),
(16, 1, '2026-07-11', 'Limpieza de turnover', 'pendiente', 140.00);

INSERT INTO pagos (id, reserva_id, monto, fecha_pago, metodo) VALUES
(1, 1, 149.00, '2026-06-02', 'tarjeta'),
(2, 2, 99.00, '2026-06-20', 'tarjeta'),
(3, 3, 140.00, '2026-06-05', 'efectivo'),
(4, 6, 79.00, '2026-06-10', 'tarjeta'),
(5, 7, 149.00, '2026-06-12', 'transferencia'),
(6, 9, 99.00, '2026-06-15', 'tarjeta'),
(7, 10, 140.00, '2026-06-18', 'efectivo'),
(8, 13, 140.00, '2026-07-05', 'tarjeta'),
(9, 14, 149.00, '2026-07-07', 'transferencia'),
(10, 1, 20.00, '2026-06-03', 'propina'),
(11, 7, 15.00, '2026-06-13', 'propina'),
(12, 10, 10.00, '2026-06-19', 'propina');
