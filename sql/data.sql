-- Active: 1749583203372@@127.0.0.1@3307@pizzeria_margarita

SHOW TABLES;

-- Inserciones

INSERT INTO cliente
VALUES('Adrian Ruiz', '30102030405', 'Esmeralda Rizada 14-20'),
('Gabriel Montero', '30102030406', 'Esmeralda Oleada 33-35'),
('Nico Williams', '30102030407', 'Tierra Santa 40-41')

INSERT INTO tipo_producto
VALUES('Pizzas'),
('Bebidas')

INSERT INTO producto
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

INSERT INTO combo
VALUES('Dos extremos', 55000),
('Camper floral', 32000)

INSERT INTO producto_combo
VALUES(1, 1),
(2,1),
(3,1),
(1,2),
(4,2)

INSERT INTO metodo_pago
VALUES('Efectivo'),
('Tarjeta credito'),
('Transferencia bancaria')

INSERT INTO pedido
VALUES('2025-05-21', 32000, 1, 1),
('2025-06-12', 4000, 2, 2),
('2025-06-12', 45000, 3, 3)

INSERT INTO detalle_pedido
VALUES(1, 1, 1), -- Camper floral
(1, 1, 4), -- Camper floral
(2, 2, 2),
(1, 3, 3)

INSERT INTO factura
VALUES('Adrian', 32000, 1, 1),
('Gabriel', 4000, 2, 2),
('Williams', 45000, 3, 3)

INSERT INTO ingrediente
VALUES('Harina', 20, 5190),
('tomate', 50, 4900),
('Queso mozzarella', 55, 43050),
('Pepperoni', 11, 36750),
('Cebolla', 9, 5900),
('Champinones', 10, 3300),
('Chorizo', 15, 23850),
('Pollo', 17, 15000)

INSERT INTO ingrediente_extra
VALUES(1, 1, 5),
(1, 1, 6),
(1, 4, 6)

INSERT INTO presentacion
VALUES('Grande'),
('Mediano'),
('Pequeno')

INSERT INTO producto_presentacion
VALUES(1, 1, 35000),
(2, 2, 7000),
(3, 3, 26000),
(3, 1, 42000),
(4, 2, 3000)