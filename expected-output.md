# Expected output — verified by running every query on SQLite (2026-11-25)

All row counts below are real results from the data in `data.sql`.

## 01-clientes-sin-reserva.sql

Columns: id, nombre, ciudad, fecha_registro — **2 rows**

```
id | nombre | ciudad | fecha_registro
12 | Andres Paredes | Miami | 2026-06-20
11 | Valeria Ortiz | North Bay Village | 2026-06-02
```

## 02-reservas-con-cliente.sql

Columns: reserva_id, cliente, fecha, servicio, estado, precio — **16 rows**

```
reserva_id | cliente | fecha | servicio | estado | precio
1 | Ana Torres | 2026-06-02 | Limpieza profunda | completada | 149.0
3 | Luis Mendez | 2026-06-05 | Limpieza de turnover | completada | 140.0
4 | Carmen Ruiz | 2026-06-08 | Limpieza profunda | cancelada | 149.0
6 | Pedro Soto | 2026-06-10 | Limpieza de ventanas | completada | 79.0
7 | Lucia Fernandez | 2026-06-12 | Limpieza profunda | completada | 149.0
9 | Jorge Diaz | 2026-06-15 | Limpieza estandar | completada | 99.0
10 | Maria Gonzalez | 2026-06-18 | Limpieza de turnover | completada | 140.0
2 | Ana Torres | 2026-06-20 | Limpieza estandar | completada | 99.0
11 | Carlos Vega | 2026-06-22 | Limpieza profunda | cancelada | 149.0
5 | Carmen Ruiz | 2026-06-25 | Limpieza estandar | pendiente | 99.0
8 | Lucia Fernandez | 2026-06-28 | Limpieza profunda | pendiente | 149.0
12 | Luis Mendez | 2026-07-03 | Limpieza estandar | pendiente | 99.0
13 | Sofia Ramos | 2026-07-05 | Limpieza de turnover | completada | 140.0
14 | Diego Herrera | 2026-07-07 | Limpieza profunda | completada | 149.0
15 | Pedro Soto | 2026-07-09 | Limpieza estandar | pendiente | 99.0
16 | Ana Torres | 2026-07-11 | Limpieza de turnover | pendiente | 140.0
```

## 03-ingreso-por-cliente.sql

Columns: cliente, total_pagado, num_pagos — **8 rows**

```
cliente | total_pagado | num_pagos
Ana Torres | 268.0 | 3
Lucia Fernandez | 164.0 | 2
Maria Gonzalez | 150.0 | 2
Diego Herrera | 149.0 | 1
Luis Mendez | 140.0 | 1
Sofia Ramos | 140.0 | 1
Jorge Diaz | 99.0 | 1
Pedro Soto | 79.0 | 1
```

## 04-clientes-con-mas-de-una-reserva.sql

Columns: cliente, num_reservas — **5 rows**

```
cliente | num_reservas
Ana Torres | 3
Carmen Ruiz | 2
Lucia Fernandez | 2
Luis Mendez | 2
Pedro Soto | 2
```

## 05-servicios-mas-reservados.sql

Columns: servicio, num_reservas — **4 rows**

```
servicio | num_reservas
Limpieza estandar | 5
Limpieza de turnover | 4
Limpieza profunda | 4
Limpieza de ventanas | 1
```

## 06-ingreso-por-mes.sql

Columns: mes, ingreso, num_pagos — **2 rows**

```
mes | ingreso | num_pagos
2026-06 | 900.0 | 10
2026-07 | 289.0 | 2
```

## 07-clientes-sin-pagos.sql

Columns: id, nombre, ciudad — **8 rows**

```
id | nombre | ciudad
1 | Ana Torres | Miami Beach
12 | Andres Paredes | Miami
8 | Carlos Vega | Coral Gables
3 | Carmen Ruiz | North Bay Village
5 | Lucia Fernandez | Miami
2 | Luis Mendez | Miami
4 | Pedro Soto | Miami Beach
11 | Valeria Ortiz | North Bay Village
```

## 08-reservas-canceladas-por-mes.sql

Columns: mes, total, canceladas, tasa_cancelacion_pct — **2 rows**

```
mes | total | canceladas | tasa_cancelacion_pct
2026-06 | 11 | 2 | 18.2
2026-07 | 5 | 0 | 0.0
```

## 09-ranking-clientes-por-gasto.sql

Columns: cliente, total_gastado, puesto — **8 rows**

```
cliente | total_gastado | puesto
Ana Torres | 268.0 | 1
Lucia Fernandez | 164.0 | 2
Maria Gonzalez | 150.0 | 3
Diego Herrera | 149.0 | 4
Luis Mendez | 140.0 | 5
Sofia Ramos | 140.0 | 5
Jorge Diaz | 99.0 | 7
Pedro Soto | 79.0 | 8
```

## 10-reservas-pendientes-detalle.sql

Columns: reserva_id, cliente, email, fecha, servicio, precio — **5 rows**

```
reserva_id | cliente | email | fecha | servicio | precio
5 | Carmen Ruiz | carmen.ruiz@example.com | 2026-06-25 | Limpieza estandar | 99.0
8 | Lucia Fernandez | lucia.fernandez@example.com | 2026-06-28 | Limpieza profunda | 149.0
12 | Luis Mendez | luis.mendez@example.com | 2026-07-03 | Limpieza estandar | 99.0
15 | Pedro Soto | pedro.soto@example.com | 2026-07-09 | Limpieza estandar | 99.0
16 | Ana Torres | ana.torres@example.com | 2026-07-11 | Limpieza de turnover | 140.0
```
