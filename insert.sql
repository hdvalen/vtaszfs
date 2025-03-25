INSERT INTO Clientes (id, nombre, email) VALUES
(1, 'Juan Pérez', 'juan@example.com'),
(2, 'María Gómez', 'maria@example.com'),
(3, 'Carlos Ramírez', 'carlos@example.com');

INSERT INTO contactoProveedores(id, nombre, apellidos,telefono, correo, id_proveedor) VALUES
(1, 'Juan', 'Rodriguez', 6335455665, 'juan.rodriguez@example.com', 1),
(2, 'Ana', 'Martinez', 6335455666, 'ana.mart@example.com', 2),
(3, 'Pedro', 'Garcia', 6335455667, 'pedro.garcia@example.com', 3);


INSERT INTO UbicacionCliente (id, cliente_id, direccion, ciudad, pais) VALUES
(1, 1, 'Calle 123', 'Bogotá', 'Colombia'),
(2, 2, 'Avenida Siempre Viva', 'Medellín', 'Colombia'),
(3, 3, 'Carrera 45', 'Cali', 'Colombia');

INSERT INTO Empleados (id, nombre, puesto, salario, fecha_contratacion) VALUES
(1,'Pedro Ramirez', 'Gerente', 3236366, '2020-01-01'),
(2,'Ana Martinez', 'Contador', 3236366, '2020-02-05'),
(3,'Juan Rodriguez', 'Gerente', 323636, '2020-05-11');

INSERT INTO Pedidos (id, cliente_id, fecha, total) VALUES
(1, 1, '2025-03-25', 150000),
(2, 2, '2025-03-24', 200000),
(3, 3, '2025-03-23', 175000);

INSERT INTO TiposProductos (id, tipo_nombre) VALUES
(1, 'Electrónica'),
(2, 'Ropa'),
(3, 'Hogar');

INSERT INTO Proveedores (nombre, contacto, telefono) VALUES
('TechSupplier', 'Carlos López', '3156789012'),
('ModaPlus', 'Fernanda García', '3167890123'),
('CasaPerfecta', 'Luis Torres', '3178901234');

INSERT INTO Productos (id, nombre, tipo_id, proveedor_id, precio) VALUES
(1, 'Laptop Gamer', 1, 1, 3500000),
(2, 'Camiseta Deportiva', 2, 2, 50000),
(3, 'Lámpara LED', 3, 3, 120000);

INSERT INTO DetallesPedido (pedido_id, producto_id, cantidad, precio) VALUES
( 1, 1, 1, 3500000),
( 2, 2, 3, 150000),
( 3, 3, 2, 240000);

INSERT INTO empleadosProveedores(id_empleado,id_proveedor) VALUES
(1,1),
(2,2),
(3,3);

INSERT INTO historialpedidos(fecha_cambio,cambios,id_detallePedido) VALUES
('2025-03-25', 'Se agregó un producto', 1),
('2025-03-24', 'Se agregó un producto', 2),
('2025-03-23', 'Se agregó un producto', 3);

INSERT INTO puestos(nombre, descripcion) VALUES
('Gerente', 'Persona que dirige la empresa'),
('Contador', 'Persona que se encarga de la contabilidad'),
('Gerente', 'Persona que dirige la empresa');

INSERT INTO telefonos(telefono,id_cliente) VALUES
('3156789012', '1'),
('3167890123', '2'),
('3178901234', '3');

INSERT INTO TiposProductos (tipo_nombre,descripcion) VALUES
('Electrónica','Electrónica'),
('Ropa','Ropa'),
('Hogar','Hogar');

INSERT INTO UbicacionCliente(cliente_id,direccion,ciudad,estado,codigo_postal,pais) VALUES
(1,'Calle 123 # 45-67', 'Bogotá', 'Cundinamarca', '110101', 'Colombia'),
(2,'Calle 90 # 12-34', 'Medellín', 'Antioquia', '110102', 'Colombia'),
(3,'Calle 78 # 56-78', 'Cali', 'Valles', '110103', 'Colombia');



