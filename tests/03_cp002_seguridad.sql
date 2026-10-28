\pset pager off

\echo '===== CP-002: PRUEBA DE SEGURIDAD ====='

\echo '1. Total inicial de productos'

SELECT COUNT(*) AS total_antes
FROM novamarket.productos;

\echo '2. Intento de eliminación no autorizada'

BEGIN;

DELETE FROM novamarket.productos
WHERE id_producto = 1;

ROLLBACK;

\echo '3. Verificación posterior'

SELECT COUNT(*) AS total_despues
FROM novamarket.productos;

\echo '===== FIN CP-002 ====='
