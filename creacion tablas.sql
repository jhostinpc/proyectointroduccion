CREATE TABLE Cliente_31902613768 (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    correo VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE Categoria_31902613768 (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100)
);

CREATE TABLE Producto_31902613768 (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(100),
    precio DECIMAL(10,2),
    stock INT,
    id_categoria INT
);

CREATE TABLE Pedido_31902613768 (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    total DECIMAL(10,2),
    id_cliente INT
);

CREATE TABLE Detalle_Pedido_31902613768 (
    id_detalle INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT,
    subtotal DECIMAL(10,2),
    id_pedido INT,
    id_producto INT
);

ALTER TABLE Producto_31902613768
ADD CONSTRAINT fk_producto_categoria_31902613768
FOREIGN KEY (id_categoria)
REFERENCES Categoria_31902613768(id_categoria);

ALTER TABLE Pedido_31902613768
ADD CONSTRAINT fk_pedido_cliente_31902613768
FOREIGN KEY (id_cliente)
REFERENCES Cliente_31902613768(id_cliente);

ALTER TABLE Detalle_Pedido_31902613768
ADD CONSTRAINT fk_detalle_pedido_31902613768
FOREIGN KEY (id_pedido)
REFERENCES Pedido_31902613768(id_pedido);

ALTER TABLE Detalle_Pedido_31902613768
ADD CONSTRAINT fk_detalle_producto_31902613768
FOREIGN KEY (id_producto)
REFERENCES Producto_31902613768(id_producto);

