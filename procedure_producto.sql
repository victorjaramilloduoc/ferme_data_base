
--------------------------------------------------------
--  DDL for PROCEDURE TOTAL  PEDIDOS X COMUNA
--------------------------------------------------------

CREATE OR  REPLACE PROCEDURE  
total_pedido_x_comuna
(v_codigo_comuna COMUNA.ID_COMUNA%type)
AS
  V_TOTAL number(8) := 0;
BEGIN

SELECT 
COUNT(DISTINCT VENTA.ID_VENTA)
IN V_TOTAL

 from VENTA 
INNER JOIN USUARIO 
ON USUARIO.ID_USUARIO=VENTA.ID_USUARIO
INNER JOIN COMUNA
ON COMUNA.ID_COMUNA=USUARIO.ID_COMUNA
LEFT JOIN USUARIO_ROL
ON USUARIO_ROL.ID_USUARIO=USUARIO.ID_USUARIO
WHERE USUARIO.ID_COMUNA=v_codigo_comuna;
END;

--------------------------------------------------------
--  DDL for PROCEDURE PRODUCTO
--------------------------------------------------------

CREATE OR REPLACE PROCEDURE INSERT_PRODUCTO
(NOMBRE_P       IN PRODUCTO.NOMBRE%TYPE                                     DEFAULT NULL,
 DESC_P         IN PRODUCTO.DESCRIPCION%TYPE                             DEFAULT 'desconocido',
 PRECIO_P       IN PRODUCTO.PRECIO%TYPE                                     DEFAULT NULL,
 STOCK_P        IN PRODUCTO.STOCK%TYPE                                         DEFAULT 1,
 ID_PROVEEDOR_P IN PRODUCTO.ID_PROVEEDOR%TYPE                                  ,
 ID_SUB_P       IN PRODUCTO.ID_SUBFAMILIA_PRODUCTO%TYPE               ,
 MARC_P                 IN PRODUCTO.MARCA_PRODUCTO%TYPE                           DEFAULT 'GENERICO',
 HAB_P                     IN PRODUCTO.HABILITADO%TYPE                                                                            ,
 FECHA_V        IN PRODUCTO.FECHA_VENCIMIENTO%TYPE DEFAULT '000-00-00 00:00:00'
 )
 IS
 BEGIN
  INSERT INTO PRODUCTO
  (NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_PROVEEDOR, ID_SUBFAMILIA_PRODUCTO, MARCA_PRODUCTO, HABILITADO
,FECHA_VENCIMIENTO
    ) 
  VALUES 
  (NOMBRE_P, DESC_P, PRECIO_P,STOCK_P, ID_PROVEEDOR_P, ID_SUB_P, MARC_P, HAB_P
 ,FECHA_V
    )
  ;

EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001,'A OCURRIDO UN ERROR AL INSERTAR - ' ||

    SQLCODE || ' -ERROR- ' || SQLERRM);

 END;          
