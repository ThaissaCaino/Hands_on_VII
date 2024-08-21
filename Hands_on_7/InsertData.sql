INSERT INTO pagamento (data_pagamento, valor_pagamento, imovel_id)
VALUES 
('2024-01-05', 1500, 1),
('2024-01-10', 2000, 2),
('2024-01-15', 1800, 3),
('2024-01-20', 2500, 4),
('2024-02-02', 1500, 1),
('2024-02-06', 3000, 5),
('2024-02-12', 3200, 6),
('2024-02-18', 1800, 7),
('2024-03-05', 1200, 8),
('2024-03-10', 2200, 1),
('2024-03-15', 2400, 2),
('2024-03-20', 1300, 3),
('2024-04-01', 2700, 4),
('2024-04-08', 2800, 5),
('2024-04-12', 3200, 6),
('2024-04-20', 1900, 7),
('2024-05-03', 1500, 8),
('2024-05-09', 3100, 1),
('2024-05-15', 1800, 2),
('2024-05-20', 2000, 3),
('2024-06-05', 2200, 4),
('2024-06-12', 2600, 5),
('2024-06-15', 1500, 6),
('2024-06-18', 3000, 7),
('2024-07-02', 2000, 8),
('2024-07-10', 2100, 1),
('2024-07-18', 1800, 2),
('2024-07-22', 2700, 3),
('2024-07-28', 3200, 4),
('2024-08-01', 1800, 5);


INSERT INTO tipo_imovel (descricao) VALUES
('Apartamento'),
('Casa'),
('Terreno'),
('Sala Comercial'),
('Galpão'); 

INSERT INTO imovel (descricao, tipo_imovel_id) VALUES
('Apartamento 100 m2 em condomínio fechado.', 1),
('Casa 150 m2 com piscina.', 2),
('Terreno 500 m2 em área urbana.', 3),
('Sala Comercial 50 m2 no centro.', 4),
('Galpão 1000 m2 em área industrial.', 5),
('Apartamento 80 m2 com vista para o mar.', 1),
('Casa 200 m2 com garagem para 4 carros.', 2),
('Sala Comercial 70 m2 em bairro nobre.', 4);