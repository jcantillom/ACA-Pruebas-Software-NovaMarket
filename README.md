# DBSecure Lab – NovaMarket

## ACA Final – Pruebas de Software y Metricas de Calidad

Corporacion Unificada Nacional de Educacion Superior (CUN).

### Descripcion

Laboratorio academico sobre PostgreSQL 18.6,
utilizado para realizar pruebas funcionales y de seguridad.

La base contiene seis tablas:

- clientes
- productos
- inventario
- pedidos
- detalle_pedido
- auditoria

Contiene 42.000 registros operativos ficticios y
un evento de auditoria.

## Tecnologias

- PostgreSQL 18.6
- Docker
- SQL
- DataGrip / psql

## Base de datos

El archivo `database/novamarket_qa.sql` contiene
la estructura y los datos ficticios del laboratorio.

Para restaurarla en una instancia PostgreSQL 18:

```bash
createdb -U postgres novamarket_qa
psql -X -v ON_ERROR_STOP=1 \
  -U postgres \
  -d novamarket_qa \
  -f database/novamarket_qa.sql
```

La instancia debe estar configurada con un usuario
administrador local y autenticacion apropiada.

Los roles y permisos especificos de QA deben
configurarse por separado antes de ejecutar
las pruebas con usr_operador.

## Casos de prueba

### CP-001 - Funcional

Valida la actualizacion del precio de un producto
y la reversion de la transaccion.

### CP-002 - Seguridad

Verifica que un usuario operador no pueda
eliminar productos sin autorizacion.

## Resultados observados

- CP-001: Aprobada
- CP-002: Aprobada
- Pruebas aprobadas: 2 de 2
- Exactitud funcional: 2 de 2 comprobaciones
- Intentos no autorizados bloqueados: 1 de 1

Las metricas solo representan los casos evaluados;
no certifican la calidad completa del sistema.

## Seguridad

Proyecto con datos ficticios para fines academicos.
No se incluyen credenciales ni respaldos privados.

## Fecha

Octubre de 2026.
