-- Estrutura de Tabelas para o Assistente de Auditoria
-- Objetivo: Garantir a integridade dos dados de inventário

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    codigo_sku VARCHAR(50) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    estoque_sistema INT DEFAULT 0
);

CREATE TABLE registros_auditoria (
    id SERIAL PRIMARY KEY,
    produto_id INT REFERENCES produtos(id),
    quantidade_fisica INT NOT NULL,
    data_conferencia TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    auditor_responsavel VARCHAR(100)
);

-- Simulação de uma regra de segurança: Registro de divergência
CREATE VIEW relatorio_conferencia AS
SELECT 
    p.nome,
    p.estoque_sistema,
    a.quantidade_fisica,
    (a.quantidade_fisica - p.estoque_sistema) AS divergencia
FROM registros_auditoria a
JOIN produtos p ON a.produto_id = p.id;
