-- 1) Listar quantidade total de animais por galpão
SELECT g.id AS galpao_id,
       g.tipo_instalacao,
       SUM(a.quantidade) AS total_animais
FROM galpao g
LEFT JOIN animal a ON g.id = a.galpao_id
GROUP BY g.id, g.tipo_instalacao
ORDER BY total_animais DESC;

-- 2) Listar pessoas que possuem telefone WhatsApp
SELECT p.id, p.nome, t.numero
FROM pessoa p
JOIN telefone t ON p.id = t.pessoa_id
WHERE t.tipo = 'WHATSAPP';

-- 3) Animais com quantidade acima da média de todos os animais
SELECT *
FROM animal
WHERE quantidade > ANY (
      SELECT AVG(quantidade) FROM animal
);

-- 4) Galpões que possuem produtos de estoque acima de 100 unidades
SELECT g.id, g.tipo_instalacao, SUM(e.quantidade) AS total_produtos
FROM galpao g
JOIN estoque_produto e ON g.id = e.galpao_id
GROUP BY g.id, g.tipo_instalacao
HAVING SUM(e.quantidade) > 100;

-- 5) Listar animais que já usaram algum produto (EXISTS)
SELECT a.id, a.codigo_lote, a.quantidade
FROM animal a
WHERE EXISTS (
    SELECT 1
    FROM animal_estoque_produto aep
    WHERE aep.animal_id = a.id
);


-- 6) Funcionários ativos com dependentes acima da média da empresa
SELECT f.*
FROM funcionario f
WHERE f.status = 'ATIVO'
  AND f.dependentes > (
      SELECT AVG(dependentes) FROM funcionario
  );


-- 7) Relação de vendas por pessoa (JOIN múltiplo + agregação)
SELECT p.nome,
       COUNT(cf.id) AS total_vendas,
       SUM(cf.valor) AS valor_total
FROM pessoa p
JOIN controle_financeiro cf ON p.id = cf.pessoa_id
WHERE cf.tipo_lancamento = 'VENDA'
GROUP BY p.nome
ORDER BY valor_total DESC;


-- 8) Listar fornecedores que forneceram produtos usados em animais
SELECT DISTINCT p.id, p.nome
FROM pessoa p
WHERE EXISTS (
    SELECT 1
    FROM estoque_produto ep
    JOIN animal_estoque_produto aep ON ep.id = aep.estoque_produto_id
    WHERE ep.fornecedor_id = p.id
);


-- 9) Buscar nomes de pessoas com mais de um número de telefone
SELECT p.nome, COUNT(t.id) AS qtd_telefones
FROM pessoa p
JOIN telefone t ON p.id = t.pessoa_id
GROUP BY p.nome
HAVING COUNT(t.id) > 1;


-- 10) Consultar todos os animais de clientes específicos (IN)
SELECT a.*
FROM animal a
WHERE a.cliente_fornecedor_id IN (
    SELECT id FROM pessoa WHERE tipo = 'FISICA'
);