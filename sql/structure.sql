-- Active: 1749583203372@@127.0.0.1@3307@pizzeria_margarita

SHOW TABLES;

-- Borrar tablas

DROP TABLE IF EXISTS factura;

DROP TABLE IF EXISTS ingrediente_extra;

DROP TABLE IF EXISTS tipo_cliente;

DROP TABLE IF EXISTS ingrediente;

DROP TABLE IF EXISTS producto_presentacion;

DROP TABLE IF EXISTS producto_combo;

DROP TABLE IF EXISTS combo;

DROP TABLE IF EXISTS detalle_pedido;

DROP TABLE IF EXISTS producto;

DROP TABLE IF EXISTS tipo_producto;

DROP TABLE IF EXISTS cliente;

DROP TABLE IF EXISTS pedido;

DROP TABLE IF EXISTS metodo_pago;

DROP TABLE IF EXISTS presentacion;


-- Crear tablas

CREATE TABLE `cliente`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL,
    `telefono` VARCHAR(11) NOT NULL UNIQUE,
    `direccion` VARCHAR(150) NOT NULL,
    INDEX (nombre)
);

CREATE TABLE `producto`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL UNIQUE,
    `tipo_producto_id` INT NOT NULL,
    INDEX (tipo_producto_id)
);

CREATE TABLE `combo`(
    `id` INT NOT NULL PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL UNIQUE,
    `precio` DECIMAL(10, 2) NOT NULL
);

CREATE TABLE `detalle_pedido`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cantidad` INT NOT NULL,
    `pedido_id` INT NOT NULL,
    `producto_id` INT NOT NULL,
    INDEX (pedido_id,producto_id)
);

CREATE TABLE `factura`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cliente` VARCHAR(100) NOT NULL,
    `total` DECIMAL(10, 2) NOT NULL,
    `fecha` DATETIME NOT NULL,
    `pedido_id` INT NOT NULL,
    `cliente_id` INT NOT NULL,
    INDEX (pedido_id,cliente_id)
);

CREATE TABLE `pedido`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `fecha_recogida` DATETIME NOT NULL,
    `total` DECIMAL(10, 2) NOT NULL,
    `cliente_id` INT NOT NULL,
    `metodo_pago_id` INT NOT NULL,
    INDEX (cliente_id,metodo_pago_id)
);

CREATE TABLE `metodo_pago`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL
);

CREATE TABLE `ingrediente_extra`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cantidad` INT NOT NULL,
    `detalle_pedido_id` INT NOT NULL,
    `ingrediente_id` INT NOT NULL,
    INDEX (detalle_pedido_id,ingrediente_id)
);

CREATE TABLE `tipo_producto`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL
);

CREATE TABLE `presentacion`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL
);

CREATE TABLE `ingrediente`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL UNIQUE,
    `stock` INT NOT NULL,
    `precio` DECIMAL(10, 2) NOT NULL
);

CREATE TABLE `producto_presentacion`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `producto_id` INT NOT NULL,
    `presentacion_id` INT NOT NULL,
    `precio` DECIMAL(10, 2) NOT NULL,
    INDEX (producto_id,presentacion_id)
);

CREATE TABLE `producto_combo`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `producto_id` INT NOT NULL,
    `combo_id` INT NOT NULL,
    INDEX (producto_id,combo_id)
);