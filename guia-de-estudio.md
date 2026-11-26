# Guía de estudio — SQL Practice (para defenderlo en entrevista)

**Para Modo.** Este repo no es solo evidencia: es tu material para aprender SQL y defenderlo en vivo. Una cosa a la vez: primero entiende las 4 ideas de abajo, después practica escribiendo las consultas sin mirar.

## Las 4 ideas que tienes que saber decir

### 1. JOIN — juntar dos tablas por una columna común
`reservas.cliente_id = clientes.id` une cada reserva con su cliente. Sin JOIN, tendrías dos listas sueltas; con JOIN, tienes la reserva CON el nombre del cliente. Es la consulta 02.

### 2. LEFT JOIN + IS NULL — encontrar lo que FALTA
Esta es la pregunta estrella (consulta 01, la del test del 29-oct): **¿qué clientes NO tienen reserva?**
- `LEFT JOIN` trae TODOS los clientes, aunque no tengan reserva (en esos, los campos de reserva quedan en NULL).
- `WHERE r.id IS NULL` se queda solo con esos: los que no tienen reserva.
- Si lo dices en entrevista: "el LEFT JOIN me trae a todos; el IS NULL me filtra los que no tienen nada al otro lado". Eso es todo.

### 3. GROUP BY + HAVING — resumir por grupos
`GROUP BY servicio` agrupa las reservas por servicio; `COUNT(*)` cuenta cuántas hay en cada grupo (consulta 05). `HAVING COUNT(*) > 1` filtra DESPUÉS de agrupar (consulta 04: clientes con más de una reserva). Regla: `WHERE` filtra filas antes de agrupar; `HAVING` filtra grupos después.

### 4. CTE y window — dos herramientas de nivel siguiente
- **CTE (`WITH ...`)**: una consulta con nombre que usas como tabla temporal (consulta 08: primero calculo totales y canceladas por mes, después saco el porcentaje).
- **Window (`RANK() OVER`)**: rankea filas sin colapsarlas (consulta 09: puesto de cada cliente por gasto total; los empates comparten puesto).

## Preguntas típicas de entrevista (con respuesta corta)

**"¿Diferencia entre INNER JOIN y LEFT JOIN?"**
INNER trae solo lo que coincide en las dos tablas. LEFT trae todo lo de la izquierda, aunque no coincida, y rellena con NULL.

**"¿Cómo encuentras clientes sin pedidos?"**
LEFT JOIN de clientes a pedidos y filtro `WHERE pedido.id IS NULL`.

**"¿WHERE o HAVING?"**
WHERE filtra filas antes de agrupar. HAVING filtra grupos después de agrupar (siempre con GROUP BY).

**"¿Qué es una CTE?"**
Una consulta nombrada con WITH que se usa como tabla dentro de otra consulta. Sirve para dividir un problema en pasos legibles.

## Práctica (sin mirar las respuestas)

1. Escribe la consulta 01 de memoria: clientes sin reserva. Verifica con `expected-output.md` (tienen que salir 2: Andres Paredes y Valeria Ortiz).
2. Escribe una consulta nueva: ¿qué clientes tienen reservas pendientes? (Pista: como la 10, pero solo nombre y fecha.)
3. Escribe una consulta nueva: ¿cuánto gastó cada cliente en total, solo los que gastaron más de $150? (Pista: como la 03, con HAVING.)

## Cómo defenderlo en la entrevista

1. Abre el repo y muestra el README: esquema, datos y 10 consultas con respuestas verificadas.
2. Corre la consulta 01 en vivo y explica el LEFT JOIN + IS NULL en dos frases.
3. Si te piden algo nuevo (ej: "clientes sin pagos"), escribe la 07 en vivo explicando cada parte.
4. Di la verdad sobre el nivel: "Estoy aprendiendo SQL con práctica real: este repo es mi trabajo de las últimas semanas, con consultas verificadas corriendo en SQLite". Nunca digas que lo dominas todo: muestra lo que hiciste y cómo lo verificaste.
