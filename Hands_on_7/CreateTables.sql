-- Criação da tabela de Tipo de Imóvel
CREATE TABLE tipo_imovel (
    id_tipo SERIAL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

-- Criação da tabela de Imóveis
CREATE TABLE imovel (
    id_imovel SERIAL PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    tipo_imovel_id INT REFERENCES tipo_imovel(id_tipo)
);

-- Criação da tabela de Pagamentos
CREATE TABLE pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    data_pagamento DATE NOT NULL,
    valor_pagamento DECIMAL(10, 2) NOT NULL,
    imovel_id INT REFERENCES imovel(id_imovel)