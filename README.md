# Base de datos ferme

Base de Datos Ferme limpia sin datos 

Procedimiento 

Trigger

## instalacion 

Contenido de los scrips 

Scrip_DB.sql 
```bash 
contiene la estructura de la base de datos completa
```

trigger_producto.sql
```bash 
contiene scrips de creacion de trigger de producto
que consiste en la logica de creacion de codigo del producto 
```

procedure_producto.sql
```bash 
contiene scrips de creacion deprocedimiento de producto
que inserta los parametros recibidos  el nombre del procedimiento es 'INSERT_PRODUCT'
```
## Uso de 'INSERT_PRODUCT'



```sql
execute insert_product(NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_PROVEEDOR, ID_SUBFAMILIA_PRODUCTO, MARCA_PRODUCTO, HABILITADO,FECHA_VENCIMIENTO)
```
donde se debe remplazar todo lo que esta dentro del parentesis por los datos a insertar segun corresponda







