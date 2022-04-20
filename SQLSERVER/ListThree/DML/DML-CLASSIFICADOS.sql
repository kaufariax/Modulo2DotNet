USE db_classificados

INSERT INTO Usuario
VALUES
(1, '356.452.542-98', 'Anunciante', 'SP', '11 957472-7474'),
(2, '654.463.986-785', 'Contratante', 'RJ', '21 96820-6290'),
(3, '572.582.783-10', 'Contratante', 'SP', '11 96830-7247')

INSERT INTO Anuncio
VALUES
(1, 'Automovel', 'Carro', 'SP', '11 957472-7474', 1),
(2, 'Automovel', 'Caminhão', 'SP', '11 957472-7474', 1),
(3, 'Automovel', 'Onibus', 'SP', '11 957472-7474', 1)

SELECT * FROM Anuncio
WHERE Regiao LIKE 'SP'

SELECT * FROM Usuario
WHERE Regiao LIKE 'SP'