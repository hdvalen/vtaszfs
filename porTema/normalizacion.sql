## Normalización

### Crear una tabla HistorialPedidos que almacene cambios en los pedidos.
   
   CREATE TABLE historialpedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_cambio TIMESTAMP,
    cambios TEXT,
    id_detallePedido INT,
    CONSTRAINT fk_detallePedido FOREIGN KEY (id_detallePedido) REFERENCES DetallesPedido(id)
   );

### Evaluar la tabla Clientes para eliminar datos redundantes y normalizar hasta 3NF.


### Separar la tabla Empleados en una tabla de DatosEmpleados y otra para Puestos .


    CREATE TABLE datosEmpleados (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(50),
        apellidos VARCHAR(50),
        fecha_nacimiento DATE,
        salario DECIMAL(10,2),
        id_empleado INT,
        CONSTRAINT fk_empleado FOREIGN KEY (id_empleado) REFERENCES Empleados(id)
        );
    
    CREATE TABLE puestos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(50),
        descripcion VARCHAR(100)
        );

### Revisar la relación Clientes y UbicacionCliente para evitar duplicación de datos.

    CREATE TABLE ubicaciones (
        id INT PRIMARY KEY AUTO_INCREMENT,
        calle VARCHAR(100),
        ciudad VARCHAR(50),
        estado VARCHAR(50),
        pais VARCHAR(50)
        );
        
### Normalizar Proveedores para tener ContactoProveedores en otra tabla.

    CREATE TABLE contactoProveedores (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(50),
        apellidos VARCHAR(50),
        telefono VARCHAR(20),
        correo VARCHAR(100),
        id_proveedor INT,
        CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id)
        );
        
### Crear una tabla de Telefonos para almacenar múltiples números por cliente.

    CREATE TABLE telefonos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        telefono VARCHAR(20),
        id_cliente INT,
        CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
        );

### Transformar TiposProductos en una relación categórica jerárquica.

    CREATE TABLE tipoProducto(
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(50),
        descripcion VARCHAR(100)
        );

### Normalizar Pedidos y DetallesPedido para evitar inconsistencias de precios.

    CREATE TABLE detallesPedidos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_pedido INT,
        id_producto INT,
        cantidad INT,
        precio DECIMAL(10,2),
        CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES Pedidos(id),
        CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES Productos(id)
        );
    
### Usar una relación de muchos a muchos para Empleados y Proveedores .

   CREATE TABLE empleadosProveedores (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_empleado INT,
        id_proveedor INT,
        CONSTRAINT fk_empleados FOREIGN KEY (id_empleado) REFERENCES Empleados(id),
        CONSTRAINT fk_proveedores FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id)
        );

### Convertir la tabla UbicacionCliente en una relación genérica de Ubicaciones .

    CREATE TABLE ubicacionesCliente (
        id INT PRIMARY KEY AUTO_INCREMENT,
        direccion VARCHAR(100),
        ciudad VARCHAR(50),
        estado VARCHAR(50),
        pais VARCHAR(50)
        );

