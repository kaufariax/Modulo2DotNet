USE db_marketplace

INSERT INTO Vendas
VALUES
(58, 'Cosmeticos', 'Ativadores de Cacho'),
(72, 'Calçados', 'Tênis')

INSERT INTO Usuarios
VALUES
('Anthony', 'anthony@email.com', 'anthony123', '548.737.270-65', 2),
('Kimberly', 'kim@email.com', 'kim123', '286.296.045-37', 1)

INSERT INTO CarrinhoDePedidos
VALUES
('Esmaltes', 545.85, 2),
('Roupas', 879.98, 1)

INSERT INTO Entrega
VALUES
('Entrega via Correios', '29/05/2022', 2),
('Entrega via Correios', '25/04/2022', 1)

SELECT * FROM Entrega
WHERE Descricao LIKE 'Entrega via Correios'

SELECT * FROM CarrinhoDePedidos
WHERE Preco BETWEEN 500 AND 900
