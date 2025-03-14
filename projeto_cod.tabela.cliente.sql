CREATE DATABASE IF NOT EXISTS loja2;
USE loja2;

CREATE TABLE IF NOT EXISTS clientes2 (
    cod_client INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    cep VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS pedidos (
    num_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    itens TEXT,
    valor DECIMAL(10,2) NOT NULL,clientes2clientes2
    cod_client INT,
    FOREIGN KEY (cod_client) REFERENCES clientes2(cod_client)  -- Corrigido para referenciar 'cod_client'
);

INSERT INTO clientes2 (nome, endereco, cidade, cep)
VALUES
('João Martins', 'Rua Alameda Riacho', 'São Paulo', '12340-000'),
('Alex Pedro', 'Rua Tiradentes', 'Rio de Janeiro', '02835-030');
