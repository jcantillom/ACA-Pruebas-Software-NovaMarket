\set ON_ERROR_STOP on
\pset pager off

\echo '===== CP-001: PRUEBA FUNCIONAL ====='

BEGIN;

\echo '1. Precio inicial'

SELECT id_producto, nombre, precio
FROM novamarket.productos
WHERE id_producto = 1;

\echo '2. Actualización controlada'

UPDATE novamarket.productos
SET precio = precio + 500
WHERE id_producto = 1
RETURNING id_producto, nombre, precio;

\echo '3. Comprobación de la operación'

SELECT
  id_producto,
  precio,
  precio = 11637.00 AS resultado_esperado
FROM novamarket.productos
WHERE id_producto = 1;

ROLLBACK;

\echo '===== FIN CP-001 ====='
