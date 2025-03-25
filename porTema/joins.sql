## Joins

### Obtener la lista de todos los pedidos con los nombres de clientes usando INNER JOIN .

    SELECT Pedidos.id AS pedido_id, Clientes.nombre AS cliente, Pedidos.fecha, Pedidos.total
    FROM Pedidos
    INNER JOIN Clientes ON Pedidos.cliente_id = Clientes.id;

### Listar los productos y proveedores que los suministran con INNER JOIN .

    SELECT Productos.nombre AS producto, Proveedores.nombre AS proveedor
    FROM Productos
    INNER JOIN Proveedores ON Productos.proveedor_id = Proveedores.id;

### Mostrar los pedidos y las ubicaciones de los clientes con LEFT JOIN .

    SELECT Pedidos.id AS pedido_id, Clientes.nombre AS cliente, UbicacionCliente.direccion, UbicacionCliente.ciudad
    FROM Pedidos
    LEFT JOIN Clientes ON Pedidos.cliente_id = Clientes.id
    LEFT JOIN UbicacionCliente ON Clientes.id = UbicacionCliente.cliente_id;

### Consultar los empleados que han registrado pedidos, incluyendo empleados sin pedidos ( LEFT JOIN ).

    SELECT Empleados.nombre, Empleados.puesto, Pedidos.id AS pedido_id
    FROM Empleados
    LEFT JOIN Pedidos ON Empleados.id = Pedidos.cliente_id;

### Obtener el tipo de producto y los productos asociados con INNER JOIN .

    SELECT TiposProductos.tipo_nombre, Productos.nombre AS producto
    FROM Productos
    INNER JOIN TiposProductos ON Productos.tipo_id = TiposProductos.id;

### Listar todos los clientes y el número de pedidos realizados con COUNT y GROUP BY .

    SELECT Clientes.nombre, COUNT(Pedidos.id) AS total_pedidos
    FROM Clientes
    LEFT JOIN Pedidos ON Clientes.id = Pedidos.cliente_id
    GROUP BY Clientes.id;

### Combinar Pedidos y Empleados para mostrar qué empleados gestionaron pedidos específicos.

    SELECT Pedidos.id AS pedido_id, Clientes.nombre AS cliente, Empleados.nombre AS empleado
    FROM Pedidos
    INNER JOIN Clientes ON Pedidos.cliente_id = Clientes.id
    LEFT JOIN Empleados ON Pedidos.cliente_id = Empleados.id;

### Mostrar productos que no han sido pedidos ( RIGHT JOIN ).

    SELECT Productos.nombre AS producto
    FROM Productos
    LEFT JOIN DetallesPedido ON Productos.id = DetallesPedido.producto_id
    WHERE DetallesPedido.id IS NULL;

### Mostrar el total de pedidos y ubicación de clientes usando múltiples JOIN .

    SELECT Clientes.nombre AS cliente, UbicacionCliente.ciudad, COUNT(Pedidos.id) AS total_pedidos
    FROM Clientes
    LEFT JOIN Pedidos ON Clientes.id = Pedidos.cliente_id
    LEFT JOIN UbicacionCliente ON Clientes.id = UbicacionCliente.cliente_id
    GROUP BY Clientes.id, UbicacionCliente.ciudad;

### Unir Proveedores , Productos , y TiposProductos para un listado completo de inventario.

    SELECT Productos.nombre AS producto, Proveedores.nombre AS proveedor, TiposProductos.tipo_nombre AS categoria
    FROM Productos
    INNER JOIN Proveedores ON Productos.proveedor_id = Proveedores.id
    INNER JOIN TiposProductos ON Productos.tipo_id = TiposProductos.id;
