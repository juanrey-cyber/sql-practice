-- Schema: small cleaning-services business (synthetic demo data)
-- Tablas: clientes, reservas, pagos

CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    email TEXT NOT NULL,
    ciudad TEXT NOT NULL,
    fecha_registro DATE NOT NULL
);

CREATE TABLE reservas (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER NOT NULL REFERENCES clientes(id),
    fecha DATE NOT NULL,
    servicio TEXT NOT NULL,
    estado TEXT NOT NULL CHECK (estado IN ('completada', 'pendiente', 'cancelada')),
    precio REAL NOT NULL
);

CREATE TABLE pagos (
    id INTEGER PRIMARY KEY,
    reserva_id INTEGER NOT NULL REFERENCES reservas(id),
    monto REAL NOT NULL,
    fecha_pago DATE NOT NULL,
    metodo TEXT NOT NULL
);
