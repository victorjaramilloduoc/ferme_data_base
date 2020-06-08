# Base de datos ferme

- Script Base de datos

- Script poblamiento Base de datos

- Procedimiento Almacenado

- Trigger

## Instalación 

### **Contenido de los scripts**

*script_base_datos.sql*
```bash 
Contiene la estructura de la base de datos completa, junto a las secuencias implementadas.
```

*script_base_datos.sql*
```bash 
Contiene los datos para realizar el poblamiento de la base de datos.
```

*trigger_producto.sql*
```bash 
Contiene scrips de creacion de trigger de producto que consiste en la lógica de creación de codigo del producto.
```

*procedure_producto.sql*
```bash 
Contiene scrips de creacion deprocedimiento de producto que inserta los parametros recibidos.
El nombre del procedimiento es 'INSERT_PRODUCT'
```
### **Uso de 'INSERT_PRODUCT'**

```sql
execute insert_product(NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_PROVEEDOR, ID_SUBFAMILIA_PRODUCTO, MARCA_PRODUCTO, HABILITADO,FECHA_VENCIMIENTO)
```

Donde se debe remplazar todo lo que esta dentro del parentesis por los datos a insertar según corresponda







