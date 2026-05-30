
/* CLIENTE*/

INSERT INTO Cliente_31902613768(nombre, apellido, correo, telefono)
VALUES ('Melvin', 'Herrera', 'melvin@gmail.com', '5555-1111');

INSERT INTO Cliente_31902613768(nombre, apellido, correo, telefono)
VALUES ('Carlos', 'Lopez', 'carlos@gmail.com', '5555-2222');

INSERT INTO Cliente_31902613768(nombre, apellido, correo, telefono)
VALUES ('Andrea', 'Ramirez', 'andrea@gmail.com', '5555-3333');

INSERT INTO Cliente_31902613768(nombre, apellido, correo, telefono)
VALUES ('Luis', 'Morales', 'luis@gmail.com', '5555-4444');

INSERT INTO Cliente_31902613768(nombre, apellido, correo, telefono)
VALUES ('Sofia', 'Castro', 'sofia@gmail.com', '5555-5555');

/* CATEGORIA */

INSERT INTO Categoria_31902613768(nombre_categoria)
VALUES ('Laptops');

INSERT INTO Categoria_31902613768(nombre_categoria)
VALUES ('Teclados');

INSERT INTO Categoria_31902613768(nombre_categoria)
VALUES ('Monitores');

INSERT INTO Categoria_31902613768(nombre_categoria)
VALUES ('Mouses');

INSERT INTO Categoria_31902613768(nombre_categoria)
VALUES ('Componentes');

/* PRODUCTO */

INSERT INTO Producto_31902613768(nombre_producto, precio, stock, id_categoria)
VALUES ('Laptop Gamer', 6500.00, 10, 1);

INSERT INTO Producto_31902613768(nombre_producto, precio, stock, id_categoria)
VALUES ('Teclado RGB', 450.00, 20, 2);

INSERT INTO Producto_31902613768(nombre_producto, precio, stock, id_categoria)
VALUES ('Monitor 144Hz', 2200.00, 8, 3);

INSERT INTO Producto_31902613768(nombre_producto, precio, stock, id_categoria)
VALUES ('Mouse Gamer', 300.00, 15, 4);

INSERT INTO Producto_31902613768(nombre_producto, precio, stock, id_categoria)
VALUES ('RTX 4070', 5800.00, 5, 5);

/* PEDIDO */

INSERT INTO Pedido_31902613768(fecha, total, id_cliente)
VALUES ('2026-05-01', 6500.00, 1);

INSERT INTO Pedido_31902613768(fecha, total, id_cliente)
VALUES ('2026-05-03', 450.00, 2);

INSERT INTO Pedido_31902613768(fecha, total, id_cliente)
VALUES ('2026-05-04', 2200.00, 3);

INSERT INTO Pedido_31902613768(fecha, total, id_cliente)
VALUES ('2026-05-06', 300.00, 4);

INSERT INTO Pedido_31902613768(fecha, total, id_cliente)
VALUES ('2026-05-07', 5800.00, 5);

/* DETALLE PEDIDO*/

INSERT INTO Detalle_Pedido_31902613768(cantidad, subtotal, id_pedido, id_producto)
VALUES (1, 6500.00, 1, 1);

INSERT INTO Detalle_Pedido_31902613768(cantidad, subtotal, id_pedido, id_producto)
VALUES (1, 450.00, 2, 2);

INSERT INTO Detalle_Pedido_31902613768(cantidad, subtotal, id_pedido, id_producto)
VALUES (1, 2200.00, 3, 3);

INSERT INTO Detalle_Pedido_31902613768(cantidad, subtotal, id_pedido, id_producto)
VALUES (1, 300.00, 4, 4);

INSERT INTO Detalle_Pedido_31902613768(cantidad, subtotal, id_pedido, id_producto)
VALUES (1, 5800.00, 5, 5);

/* UPDATES */

UPDATE Producto_31902613768
SET precio = 7000.00
WHERE id_producto = 1;

UPDATE Cliente_31902613768
SET telefono = '4444-9999'
WHERE id_cliente = 3;

UPDATE Pedido_31902613768
SET total = 6000.00
WHERE id_pedido = 5;

/* DELETES */

DELETE FROM Detalle_Pedido_31902613768
WHERE id_detalle = 4;

DELETE FROM Pedido_31902613768
WHERE id_pedido = 4;

DELETE FROM Cliente_31902613768
WHERE id_cliente = 4;

/* SELECTS  */

/* COUNT */

SELECT COUNT(*) AS total_clientes
FROM Cliente_31902613768;

/* AVG */

SELECT AVG(precio) AS promedio_precios
FROM Producto_31902613768;

/* MAX */

SELECT MAX(precio) AS producto_mas_caro
FROM Producto_31902613768;

/* MIN */

SELECT MIN(precio) AS producto_mas_barato
FROM Producto_31902613768;

/* SUM + GROUP BY */

SELECT id_categoria,
SUM(stock) AS total_stock
FROM Producto_31902613768
GROUP BY id_categoria;

