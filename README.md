# SQL Practice — for QA & Data Roles

**EN:** Hands-on SQL practice with a real schema, real (synthetic demo) data, and 10 queries with verified answers. Built to demonstrate the SQL skills QA and junior data postings ask for most: JOINs, GROUP BY / HAVING, CTEs, and window functions. All queries run on SQLite — no setup, no server.

**ES:** Práctica de SQL con esquema real, datos reales (de demostración, sintéticos) y 10 consultas con respuestas verificadas. Hecho para demostrar lo que más piden los avisos de QA y datos junior: JOINs, GROUP BY / HAVING, CTEs y window functions. Todo corre en SQLite, sin instalar un servidor.

## What this demonstrates / Qué demuestra

- `LEFT JOIN` + `IS NULL` to find customers with no bookings (the classic QA/data question)
- `INNER JOIN` across three tables
- Aggregation with `SUM`, `COUNT`, `GROUP BY`, `HAVING`
- A CTE (Common Table Expression) for cancellation rates
- A window function (`RANK()`) for customer ranking
- Writing queries against a realistic small-business schema (customers, bookings, payments)

## How to run / Cómo correrlo

```bash
# 1. Create the database (SQLite 3.25+ for window functions)
sqlite3 practica.db < schema.sql
sqlite3 practica.db < data.sql

# 2. Run any query, e.g.:
sqlite3 -header -column practica.db < 01-clientes-sin-reserva.sql
```

No `sqlite3` CLI? Use [DB Browser for SQLite](https://sqlitebrowser.org/) (free), or Python:

```python
import sqlite3
con = sqlite3.connect("practica.db")
for row in con.execute(open("01-clientes-sin-reserva.sql").read()):
    print(row)
```

## Files

| File | What it answers |
|---|---|
| `schema.sql` | Tables: `clientes`, `reservas`, `pagos` |
| `data.sql` | 12 customers, 16 bookings, 12 payments (synthetic demo data) |
| `01-clientes-sin-reserva.sql` | Customers with NO booking (LEFT JOIN + IS NULL) |
| `02-reservas-con-cliente.sql` | All bookings with customer name (INNER JOIN) |
| `03-ingreso-por-cliente.sql` | Total paid per customer (JOIN + SUM) |
| `04-clientes-con-mas-de-una-reserva.sql` | Customers with more than 1 booking (HAVING) |
| `05-servicios-mas-reservados.sql` | Most booked services (GROUP BY + COUNT) |
| `06-ingreso-por-mes.sql` | Revenue per month (GROUP BY on date) |
| `07-clientes-sin-pagos.sql` | Customers who never paid (LEFT JOIN chain) |
| `08-reservas-canceladas-por-mes.sql` | Cancellation rate per month (CTE) |
| `09-ranking-clientes-por-gasto.sql` | Customer ranking by total spend (RANK window) |
| `10-reservas-pendientes-detalle.sql` | Pending bookings, full detail (JOIN) |
| `expected-output.md` | Verified row counts and sample output for every query |

## About the data

All data is **synthetic demo data** written for practice — fictional customers of a fictional small cleaning business. It is not real customer data and no row represents a real person or real transaction.

## Author

Juan Rey ([@juanrey-cyber](https://github.com/juanrey-cyber)) — built while training for QA and junior data roles, following the "reverse hunting" method: start from what real job postings ask for, then build the proof.
