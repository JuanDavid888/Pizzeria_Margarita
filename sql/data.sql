-- Active: 1749726759608@@127.0.0.1@3307@pizzeria

SHOW TABLES;

-- Inserciones

INSERT INTO cliente (nombre, telefono, direccion)
VALUES('Adrian Ruiz', '30102030405', 'Esmeralda Rizada 14-20'),
('Gabriel Montero', '30102030406', 'Esmeralda Oleada 33-35'),
('Nico Williams', '30102030407', 'Tierra Santa 40-41')

INSERT INTO tipo_producto (nombre)
VALUES('Pizzas'),
('Bebidas')

INSERT INTO producto (nombre, tipo_producto_id)
VALUES('Pizza margarita', 1),
('Coca cola', 2),
('Pizza pepperoni', 1),
('Limonada de coco', 2)

-- Ingredientes productos (pizzas)

-- 1.
/*
- Masa de pizza
- Salsa de tomate
- Mozzarella fresca (idealmente mozzarella de búfala o fior di latte)
- Albahaca fresca
- Aceite de oliva virgen extra
*/

--3.
/*
- Masa de pizza
- Salsa de tomate
- Mozzarella rallada
- Pepperoni
- Aceite de oliva (opcional)
- Orégano seco (opcional)
- Pimienta (opcional)
*/

INSERT INTO combo (nombre, precio)
VALUES('Dos extremos', 55000),
('Camper floral', 32000)

INSERT INTO producto_combo (producto_id, combo_id)
VALUES(1, 1),
(2,1),
(3,1),
(1,2),
(4,2)

INSERT INTO metodo_pago (nombre)
VALUES('Efectivo'),
('Tarjeta credito'),
('Transferencia bancaria')

INSERT INTO pedido (fecha_recogida, total, cliente_id, metodo_pago_id)
VALUES('2025-05-21', 32000, 1, 1),
('2025-06-12', 4000, 2, 2),
('2025-06-12', 45000, 3, 3)

INSERT INTO detalle_pedido (cantidad, pedido_id, producto_id)
VALUES(1, 1, 1), -- Camper floral
(1, 1, 4), -- Camper floral
(2, 2, 2),
(1, 3, 3)

INSERT INTO factura (cliente, total, fecha, pedido_id, cliente_id)
VALUES('Adrian Ruiz', 32000, '2025-05-21', 1, 1),
('Gabriel Montero', 4000, '2025-06-12', 2, 2),
('Nico Williams', 45000, '2025-06-12', 3, 3)

INSERT INTO ingrediente (nombre, stock, precio)
VALUES('Harina', 20, 5190),
('tomate', 50, 4900),
('Queso mozzarella', 55, 43050),
('Pepperoni', 11, 36750),
('Cebolla', 9, 5900),
('Champinones', 10, 3300),
('Chorizo', 15, 23850),
('Pollo', 17, 15000)

INSERT INTO ingrediente_extra (cantidad, detalle_pedido_id, ingrediente_id)
VALUES(1, 1, 5),
(1, 1, 6),
(1, 4, 6)

INSERT INTO presentacion (nombre)
VALUES('Pequeno'),
('Mediano'),
('Grande')

INSERT INTO producto_presentacion (producto_id, presentacion_id, precio)
VALUES(1, 1, 30000),
(1, 2, 50000),
(1, 3, 65000),
(2, 1, 3000),
(2, 2, 5000),
(2, 3, 9000),
(3, 1, 35000),
(3, 2, 45000),
(3, 3, 60000),
(4, 1, 2500),
(4, 2, 5000),
(4, 3, 7500)