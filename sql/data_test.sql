-- TESTE DE MANIPULAÇÃO DE DADOS

-- 1. Inserindo produtos de exemplo
INSERT INTO produtos (codigo_sku, nome, estoque_sistema) VALUES 
('CONF001', 'Cadeira Ergonômica', 20),
('CONF002', 'Mesa de Escritório', 10);

-- 2. Simulando uma auditoria (Atualização/Inserção)
-- O sistema diz que tem 20 cadeiras, mas o auditor contou 19.
INSERT INTO registros_auditoria (produto_id, quantidade_fisica, auditor_responsavel) 
VALUES (1, 19, 'Carlos Auditor');

-- 3. Consulta para ver o resultado da auditoria
SELECT * FROM relatorio_conferencia;
